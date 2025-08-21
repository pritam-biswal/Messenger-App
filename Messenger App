import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_design/domain/constants/appcolors.dart';
import 'package:messenger_design/repository/screens/profile/profile_screen.dart';
import 'package:messenger_design/repository/screens/widgets/uihelper.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController otpcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
        fontSize: 20,
        color: Theme.of(context).brightness == Brightness.dark
            ? Color(0xffF7F7FC)
            : Color(0xff0F1828),
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      borderRadius: BorderRadius.circular(8),
      color: Theme.of(context).brightness == Brightness.dark
          ? AppColors.otpdarkmode
          : AppColors.otplightmode,
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.otpdarkmode
            : AppColors.otplightmode,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(CupertinoIcons.back),
        ),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customText(
              text: "Enter Code",
              fontsize: 24,
              fontweight: FontWeight.w700,
              context: context,
              fontfamily: "bold",
            ),
            SizedBox(height: 5),
            UiHelper.customText(
              text: "We have sent you an SMS with the code ",
              fontsize: 15,
              fontweight: FontWeight.w500,
              context: context,
              fontfamily: "regular",
            ),
            UiHelper.customText(
              text: "to +62 1309 - 1710 ",
              fontsize: 15,
              fontweight: FontWeight.w500,
              context: context,
              fontfamily: "regular",
            ),
            SizedBox(height: 20),
            Pinput(
              onCompleted: (value) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              autofocus: true,
              controller: otpcontroller,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              submittedPinTheme: submittedPinTheme,
            ),
            SizedBox(height: 25),
            TextButton(
              onPressed: () {},
              child: Text(
                "Resend Code",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  fontFamily: "regular",
                  color: Theme.of(context).brightness == Brightness.dark
                      ? AppColors.otptextdarkmode
                      : AppColors.otptextlightmode,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
