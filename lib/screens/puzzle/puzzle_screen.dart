import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/playing/playing_bloc.dart';
import '../../blocs/puzzle/puzzle_bloc.dart';
import '../../blocs/theme/theme_bloc.dart';
import '../../blocs/timer/timer_bloc.dart';
import '../../cubits/audio/audio_player_cubit.dart';
import '../../cubits/menu/game_selection_cubit.dart';
import '../../cubits/menu/level_selection_cubit.dart';
import '../../cubits/playing/fact_cubit.dart';
import '../../cubits/puzzle/puzzle_helper_cubit.dart';
import '../../cubits/puzzle/puzzle_init_cubit.dart';
import '../../models/game.dart';
import '../../models/puzzle.dart';
import '../../models/ticker.dart';
import '../../themes/country_theme.dart';
import '../../themes/puzzle_theme.dart';
import '../../utils/constants/app_constants.dart';
import '../../utils/utils.dart';
import '../../utils/utils_country.dart';
import '../../utils/utils_planet.dart';
import '../../widgets/controls/audio_control.dart';
import '../../widgets/stylized_text.dart';
import 'puzzle_sections.dart';

class PuzzleScreen extends StatelessWidget {
  const PuzzleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final game = context.read<GameSelectionCubit>().game;
    final planet = context.read<GameSelectionCubit>().planet;
    final country = context.read<GameSelectionCubit>().country;
    PuzzleTheme theme = const KenyaTheme();
    List<String> facts = [];

    if (game.type == GameType.countries) {
      theme = AppConstants.countryThemeMap[country.type]!;
      facts = UtilsCountry.facts(country.type, context);
    } else {
      theme = AppConstants.planetThemeMap[planet.type]!;
      facts = UtilsPlanet.facts(planet.type, context);
    }
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GameBloc(
            secondsToBegin: context.read<LevelSelectionCubit>().puzzleSize,
            ticker: const Ticker(),
          ),
        ),
        BlocProvider(
          create: (context) => PuzzleInitCubit(
            context.read<LevelSelectionCubit>().puzzleSize,
            context.read<GameBloc>(),
          ),
        ),
        BlocProvider(
          create: (context) => PuzzleBloc(
            context.read<LevelSelectionCubit>().puzzleSize,
            context.read<AudioPlayerCubit>(),
          )..add(const PuzzleInitialized(shufflePuzzle: false)),
        ),
        BlocProvider(
          create: (context) => PuzzleHelperCubit(
            context.read<PuzzleBloc>(),
            context.read<AudioPlayerCubit>(),
            optimized: Utils.isOptimizedPuzzle() ||
                context.read<LevelSelectionCubit>().puzzleLevel ==
                    PuzzleLevel.hard,
          ),
        ),
        BlocProvider(
          create: (_) => ThemeBloc(theme: theme),
        ),
        BlocProvider(
          create: (_) => TimerBloc(ticker: const Ticker()),
        ),
        BlocProvider(
          create: (_) => FactCubit(facts: facts),
        ),
      ],
      child: const PuzzleView(),
    );
  }
}

class PuzzleView extends StatelessWidget {
  const PuzzleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var appBar = AppBar(
      leading: const BackControl(),
      leadingWidth: 50,
      title: StylizedText(
        text: Utils.gameName(
          context.read<GameSelectionCubit>().game.type,
          context,
        ).toUpperCase(),
        strokeWidth: 2.0,
        style: const TextStyle(
          color: Colors.white,
          letterSpacing: 5,
          fontWeight: FontWeight.bold,
        ),
        textColor: Colors.white,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: const [
        AudioControl(),
      ],
    );

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(context.read<GameSelectionCubit>().game.image),
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SizedBox.fromSize(
            size: size,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  appBar,
                  const PuzzleSections(),
                ],
              ),
            ),
          ),
        ),
      ),
    );

  }
}
