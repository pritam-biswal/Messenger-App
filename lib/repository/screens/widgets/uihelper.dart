//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_design/domain/constants/appcolors.dart';

class UiHelper {
  static customImage({required String imgurl}) {
    return Image.asset("assets/images/$imgurl");
  }

  static customText({
    required String text,
    required double fontsize,
    String? fontfamily,
    FontWeight? fontweight,
    Color? color,
    required BuildContext context,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontWeight: fontweight ?? FontWeight.normal,
        fontFamily: fontfamily ?? "regular",
        color:
            color ??
            (Theme.of(context).brightness == Brightness.dark
                ? AppColors.textdarkmode
                : AppColors.textlightmode),
      ),
    );
  }

  static customButton({
    required String buttoname,
    required VoidCallback callback,
    Color? buttoncolor,
  }) {
    return SizedBox(
      height: 52,
      width: 327,
      child: ElevatedButton(
        onPressed: () {
          ElevatedButton.styleFrom(
            backgroundColor: AppColors.buttonlightmode,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          );
          callback();
        },
        child: Text(
          buttoname,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  static customTextfield({
    required TextEditingController controller,
    required String text,
    required TextInputType textinputtype,
    required BuildContext context,
    required IconData icondata,
  }) {
    return Container(
      height: 50,
      width: 370,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.containerdarkmode
            : AppColors.containerlightmode,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: controller,
        keyboardType: textinputtype,
        decoration: InputDecoration(
          hintText: text,
          prefixIcon: Icon(
            icondata,
            color: Theme.of(context).brightness == Brightness.dark
                ? AppColors.icondark
                : AppColors.iconlight,
          ),
          hintStyle: TextStyle(
            color: Theme.of(context).brightness == Brightness.dark
                ? AppColors.hintdarkmode
                : AppColors.hintlightmode,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
