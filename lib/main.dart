import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/views/startup/onboarding.dart';
import '/views/constants/app_themes.dart';
import '/views/cubit/theme_state.dart';
import '/views/theme_cubit.dart';

void main() {
  runApp(BlocProvider(create: (context) => ThemeCubit(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder:
          (context, state) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: OnBoarding(),
            theme:
                state is LightThemeState
                    ? AppThemes.darkTheme
                    : AppThemes.lightTheme,
            title: 'Chat app',
          ),
    );
  }
}
