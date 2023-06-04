import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'blocs/audio/audio_control_bloc.dart';
import 'cubits/audio/audio_player_cubit.dart';
import 'themes/theme_data.dart';
import 'utils/constants/app_constants.dart';
import 'screens/start_screen.dart';
import 'widgets/keyboard_handlers/app_keyboard_handler.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AudioControlBloc()),
        BlocProvider(
          create: (context) => AudioPlayerCubit(
            context.read<AudioControlBloc>(),
          ),
        ),
      ],
      child: AppKeyboardHandler(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          title: AppConstants.appTitle,
          theme:  AppThemeData.mainTheme(),
          home: const StartScreen(),
        ),
      ),
    );
  }
}
