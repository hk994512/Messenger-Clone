import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/extensions/app_exten.dart';
import '/views/auth/login_screen.dart';
import '/views/constants/app_colors.dart';
import '/views/theme_cubit.dart';
import '/views/widgets/ui_helper.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Theme.of(context).brightness == Brightness.light
              ? AppColors.scaffoldlight
              : AppColors.scaffolddark,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              BlocProvider.of<ThemeCubit>(context).toggleTheme();
            },
            icon: Icon(Icons.dark_mode),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customImage(image: 'onboarding.png'),
            UiHelper.customText(
              context: context,
              title:
                  'Connect easily with\n\tyour family and friends\n\t\t\t\t\t\t\tover countries',
              fontSize: 24,
              fontFamily: "bold",
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(
        buttonTitle: 'Start Messaging',
        onPressed: () => context.pushSrc(LoginScreen()),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
