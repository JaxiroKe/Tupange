import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/playing/playing_bloc.dart';
import '../../blocs/puzzle/puzzle_bloc.dart';
import '../../blocs/theme/theme_bloc.dart';
import '../../cubits/puzzle/puzzle_helper_cubit.dart';
import '../../cubits/puzzle/puzzle_init_cubit.dart';
import '../../models/tile.dart';
import '../../utils/app_logger.dart';
import '../../utils/constants/app_dimens.dart';
import '../../utils/utils.dart';
import '../layout/puzzle_layout_delegate.dart';
import '../shake_animator.dart';
import '../stylized_text.dart';

class PlayingTile extends StatefulWidget {
  final Tile tile;

  const PlayingTile({Key? key, required this.tile}) : super(key: key);

  @override
  State<PlayingTile> createState() => _PlayingTileState();
}

class _PlayingTileState extends State<PlayingTile> {
  final childVn = ValueNotifier<Widget?>(null);
  late ThemeBloc themeBloc;
  late PuzzleInitCubit puzzleInitCubit;
  Timer? _timer;

  double scale = 1.0;

  void _onHovering(bool isHovering) {
    setState(() {
      scale = isHovering ? 0.9 : 1.0;
    });
  }

  double get size {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth <= AppDimens.small) {
      return BoardSize.small;
    }

    if (screenWidth <= AppDimens.medium) {
      return BoardSize.medium;
    }

    return BoardSize.large;
  }

  buildChild() {
    final theme = themeBloc.state.theme;

    childVn.value = KeyWidget(
      key: puzzleInitCubit.getGlobalKey(widget.tile.value),
      child: Image.asset(theme.assetForTile),
    );
    puzzleInitCubit.onInit(widget.tile.value);
  }

  @override
  void initState() {
    super.initState();
    themeBloc = context.read<ThemeBloc>();
    puzzleInitCubit = context.read<PuzzleInitCubit>();
    _timer = Timer(AppDimens.kMS800, buildChild);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubitState = context.select((PuzzleInitCubit cubit) => cubit.state);
    final isReady = cubitState is PuzzleInitReady;

    final puzzleBloc = context.select((PuzzleBloc bloc) => bloc);
    final puzzleIncomplete =
        puzzleBloc.state.puzzleStatus == PuzzleStatus.incomplete;

    final puzzleHelperState =
        context.select((PuzzleHelperCubit cubit) => cubit.state);
    final isAutoSolving = puzzleHelperState.isAutoSolving;
    final showHelp = puzzleHelperState.showHelp;

    AppLogger.log('PlayingTile: updated: isAutoSolving: $isAutoSolving');

    final status = context.select((GameBloc bloc) => bloc.state.status);
    final hasStarted = status == PlayingStatus.started;

    final movementDuration =
        status == PlayingStatus.loading ? AppDimens.kMS800 : AppDimens.kMS350;

    final canPress = hasStarted && puzzleIncomplete && !isAutoSolving;

    final offset = size / widget.tile.puzzleSize;
    final x = widget.tile.currentPosition.x;
    final y = widget.tile.currentPosition.y;

    final correctX = widget.tile.correctPosition.x;
    final correctY = widget.tile.correctPosition.y;

    final isInCorrectPosition = (x == correctX) && (y == correctY);

    return AnimatedPositioned(
      duration: movementDuration,
      curve: Curves.easeInOut,
      top: offset * (y - correctY),
      left: offset * (x - correctX),
      child: ShakeAnimator(
        controller: puzzleBloc.getShakeControllerFor(
          widget.tile.value,
        ),
        child: AnimatedScale(
          scale: scale,
          curve: Curves.easeInOut,
          duration: AppDimens.kMS250,
          alignment: FractionalOffset(
            ((correctX + 1 / 2) * offset) / size,
            ((correctY + 1 / 2) * offset) / size,
          ),
          child: ClipPath(
            clipper: PuzzlePieceClipper(widget.tile),
            child: MouseRegion(
              cursor: canPress
                  ? SystemMouseCursors.click
                  : SystemMouseCursors.forbidden,
              onEnter: (_) {
                if (canPress) _onHovering(true);
              },
              onExit: (_) {
                _onHovering(false);
              },
              child: GestureDetector(
                onTap: () {
                  if (canPress) {
                    context.read<PuzzleBloc>().add(TileTapped(widget.tile));
                  }
                },
                child: SizedBox.square(
                  dimension: size,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Stack(
                      children: [
                        ValueListenableBuilder<Widget?>(
                          valueListenable: childVn,
                          builder: (_, child, __) {
                            if (child == null) return const SizedBox.shrink();
                            return isInCorrectPosition
                                ? child
                                : ColorFiltered(
                                    colorFilter: AppDimens.kGreyscaleColorFilter,
                                    child: child,
                                  );
                          },
                        ),
                        !isReady
                            ? SizedBox.square(
                                key: const Key('puzzle_tile_image'),
                                dimension: size,
                                child: Image.asset(
                                  themeBloc.state.theme.assetForTile,
                                  height: size,
                                  width: size,
                                  fit: BoxFit.fill,
                                ),
                              )
                            : const SizedBox.shrink(),
                        HelpWidget(
                          key: ValueKey(widget.tile.value),
                          tile: widget.tile,
                          showHelp: showHelp,
                          size: size,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HelpWidget extends StatelessWidget {
  final Tile tile;
  final bool showHelp;
  final double size;

  const HelpWidget({
    Key? key,
    required this.tile,
    required this.showHelp,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final correctX = tile.correctPosition.x;
    final correctY = tile.correctPosition.y;

    final offset = size / tile.puzzleSize;

    const containerSize = 40.0;

    return Transform.translate(
      offset: Offset(
        ((correctX + 1 / 2) * offset) - containerSize / 2,
        ((correctY + 1 / 2) * offset) - containerSize / 2,
      ),
      child: AnimatedSwitcher(
        duration: AppDimens.kMS250,
        reverseDuration: AppDimens.kMS250,
        switchInCurve: Curves.easeInOut,
        switchOutCurve: Curves.easeInOut,
        child: showHelp
            ? Container(
                key: Key('helper_widget_${tile.value}'),
                width: containerSize,
                height: containerSize,
                alignment: Alignment.center,
                child: StylizedText(
                  text: '${tile.value + 1}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: tile.puzzleSize == 3 ? 35.0 : 20.0,
                  ),
                ),
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}

class PuzzlePieceClipper extends CustomClipper<Path> {
  final Tile tile;

  const PuzzlePieceClipper(this.tile);

  @override
  Path getClip(Size size) {
    return Utils.getPuzzlePath(size, tile.puzzleSize, tile.correctPosition);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class KeyWidget extends StatelessWidget {
  final Widget child;

  const KeyWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return child;
  }
}