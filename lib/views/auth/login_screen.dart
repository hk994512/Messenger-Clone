import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messanger_clone/extensions/app_exten.dart';
import 'package:messanger_clone/views/auth/otp/otp_screen.dart';
import 'package:messanger_clone/views/widgets/ui_helper.dart';

import '../constants/app_colors.dart';

class LoginScreen extends StatelessWidget {
  final phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Theme.of(context).brightness == Brightness.light
                ? AppColors.scaffoldlight
                : AppColors.scaffolddark,
        leading: IconButton(
          onPressed: () => context.popSrc(),
          icon: Icon(CupertinoIcons.back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customText(
              title: 'Enter your phone number',
              fontSize: 24,
              fontFamily: "bold",
              fontWeight: FontWeight.bold,
              context: context,
            ),
            10.0.ht,
            UiHelper.customText(
              title: 'Please Enter your country code and enter',
              fontSize: 14,
              context: context,
            ),
            UiHelper.customText(
              title: 'your phone number',
              fontSize: 14,
              context: context,
            ),
            20.0.ht,
            UiHelper.customTextField(
              iconData: Icons.phone,
              controller: phoneController,
              text: 'Phone Number',
              keyboardType: TextInputType.number,
              context: context,
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(
        buttonTitle: 'Continue',
        onPressed: () => context.pushSrc(OtpScreen()),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
