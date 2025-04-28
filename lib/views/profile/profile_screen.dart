import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messanger_clone/views/nav/bottom_screeb.dart';
import 'package:messanger_clone/views/widgets/ui_helper.dart';
import '/extensions/app_exten.dart';
import '/views/constants/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Theme.of(context).brightness == Brightness.light
              ? AppColors.scaffoldlight
              : AppColors.scaffolddark,
      appBar: AppBar(
        title: UiHelper.customText(
          title: 'Your Profile',
          fontSize: 18,
          context: context,
          fontWeight: FontWeight.bold,
          fontFamily: 'Bold',
        ),
        leading: IconButton(
          icon: Icon(CupertinoIcons.back),
          onPressed: () => context.popSrc(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customImage(
              image:
                  Theme.of(context).brightness == Brightness.dark
                      ? 'darkprofile.png'
                      : 'lightprofile.png',
            ),
            30.0.ht,
            UiHelper.customTextField(
              controller: firstNameController,
              iconData: Icons.person,
              text: 'First Name(Required)',
              keyboardType: TextInputType.name,
              context: context,
            ),
            10.0.ht,
            UiHelper.customTextField(
              controller: firstNameController,
              iconData: CupertinoIcons.person_2,
              text: 'Last Name(Required)',
              keyboardType: TextInputType.name,
              context: context,
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(
        buttonTitle: 'Save',
        onPressed: () => context.pushReplaceSrc(BottomScreen()),
      ),
    );
  }
}
