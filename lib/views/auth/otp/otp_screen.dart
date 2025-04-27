import 'package:flutter/material.dart';
import '/extensions/app_exten.dart';
import '/views/constants/app_colors.dart';
import '/views/profile/profile_screen.dart';
import '/views/widgets/ui_helper.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  // const OtpScreen({super.key});
  final pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
        fontSize: 20,
        color:
            Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Colors.black,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(7)),
    );
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      color:
          Theme.of(context).brightness == Brightness.dark
              ? AppColors.otpdarkmode
              : AppColors.otplightmode,
      borderRadius: BorderRadius.circular(7),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color:
            Theme.of(context).brightness == Brightness.dark
                ? AppColors.otpdarkmode
                : AppColors.otplightmode,
      ),
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customText(
              title: 'Enter Code',
              fontSize: 24,
              context: context,
              fontFamily: 'bold',
              fontWeight: FontWeight.bold,
            ),
            10.0.ht,
            UiHelper.customText(
              title: 'We have sent you an SMS with code',
              fontSize: 14,
              context: context,
            ),
            UiHelper.customText(
              title: 'to +62 1309 -1710 -1920',
              fontSize: 14,
              context: context,
            ),
            10.0.ht,
            Pinput(
              onChanged: (value) => context.pushSrc(ProfileScreen()),
              controller: pinController,
              autofocus: true,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              submittedPinTheme: submittedPinTheme,
              validator: (s) {
                return s == '2222' ? null : 'Pin is incorrect';
              },
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              onCompleted: (pin) => debugPrint(pin),
            ),
          ],
        ),
      ),
      floatingActionButton: TextButton(
        onPressed: () {},
        child: Text(
          'Resend OTP',
          style: TextStyle(
            fontSize: 16,
            color:
                Theme.of(context).brightness == Brightness.dark
                    ? AppColors.otptextdark
                    : AppColors.otptextlight,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
