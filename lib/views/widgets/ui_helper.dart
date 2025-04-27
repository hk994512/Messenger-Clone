import 'package:flutter/material.dart';
import 'package:messanger_clone/views/constants/app_colors.dart';

class UiHelper {
  static customImage({required String image}) {
    return Image.asset('assets/images/$image');
  }

  static customText({
    required String title,
    required double fontSize,
    String? fontFamily,
    FontWeight? fontWeight,
    Color? color,
    required BuildContext context,
  }) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        color:
            color ??
            (Theme.of(context).brightness == Brightness.dark
                ? AppColors.textdarkmode
                : AppColors.textlightmode),
        fontFamily: fontFamily ?? "regular",
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }

  static customButton({
    required String buttonTitle,
    required VoidCallback onPressed,
    Color? buttonColor,
  }) {
    return SizedBox(
      height: 45,
      width: 350,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          backgroundColor: AppColors.buttonlightmode,
        ),
        onPressed: onPressed,
        child: Text(
          buttonTitle,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Bold',
          ),
        ),
      ),
    );
  }

  static customTextField({
    required TextEditingController controller,
    required String text,
    required TextInputType keyboardType,
    required BuildContext context,
  }) {
    return Container(
      height: 45,
      width: 350,
      padding: EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color:
            Theme.of(context).brightness == Brightness.dark
                ? AppColors.containerdarkmode
                : AppColors.containerlightmode,
      ),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: text,
          border: InputBorder.none,
          hintStyle: (TextStyle(
            fontSize: 14,
            color:
                Theme.of(context).brightness == Brightness.dark
                    ? AppColors.hintdarkmode
                    : AppColors.hintlightmode,
          )),
        ),
      ),
    );
  }
}
