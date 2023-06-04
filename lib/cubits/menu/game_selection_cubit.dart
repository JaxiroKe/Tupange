import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/game.dart';
import '../../models/categories/country.dart';
import '../../models/categories/planet.dart';
import '../../../utils/app_logger.dart';
import '../../../utils/constants/app_constants.dart';
import '../../../utils/constants/app_dimens.dart';
import '../../../utils/utils.dart';
import '../../screens/puzzle/puzzle_screen.dart';
import 'category_selection_cubit.dart';
import 'level_selection_cubit.dart';

part 'game_selection_state.dart';

class GameSelectionCubit extends Cubit<GameSelectionState> {
  final LevelSelectionCubit levelSelectionCubit;
  final CategorySelectionCubit categorySelectionCubit;
  final BuildContext context;

  GameSelectionCubit(
      this.levelSelectionCubit, this.categorySelectionCubit, this.context)
      : super(NoGameSelected());

  late Game _game;
  late Planet _planet;
  late Country _country;

  Game get game => _game;
  Planet get planet => _planet;
  Country get country => _country;

  void onGameSelected(Game game) async {
    _game = game;
    _planet = AppConstants.planets[0];
    _country = AppConstants.countries[0];
    
    switch (game.type) {
      case GameType.animals:
        // TODO: Handle this case.
        break;
      case GameType.counties:
        // TODO: Handle this case.
        break;
      case GameType.countries:
        var countryNos = [0, 1, 2];
        countryNos.shuffle();
        _country = AppConstants.countries[countryNos[0]];
        break;
      case GameType.planets:
        var planetNos = [0, 1, 2, 3, 4, 5, 7, 8];
        planetNos.shuffle();
        _planet = AppConstants.planets[planetNos[0]];
        break;
      case GameType.presidents:
        // TODO: Handle this case.
        break;
      case GameType.vehicles:
        // TODO: Handle this case.
        break;
    }

    AppLogger.log(
      'GameSelectionCubit tapped: $game: category: ${categorySelectionCubit.state.category} level: ${levelSelectionCubit.state.level}',
    );

    final page = await Utils.buildPageAsync(
      MultiBlocProvider(
        providers: [
          BlocProvider.value(value: categorySelectionCubit),
          BlocProvider.value(value: levelSelectionCubit),
          BlocProvider.value(value: this),
        ],
        child: const PuzzleScreen(key: Key('puzzle-page')),
      ),
    );

    await Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => page,
        transitionsBuilder: (_, anim, __, child) => FadeTransition(
          opacity: anim,
          child: child,
        ),
        transitionDuration: AppDimens.kMS800,
      ),
    );
  }
}
