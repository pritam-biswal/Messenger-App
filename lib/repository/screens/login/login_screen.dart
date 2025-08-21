import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_design/domain/constants/appcolors.dart';
import 'package:messenger_design/repository/screens/otp/otp_screen.dart';
import 'package:messenger_design/repository/screens/widgets/uihelper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(CupertinoIcons.back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customText(
              text: "Enter Your Phone Number",
              fontsize: 24,
              context: context,
              fontweight: FontWeight.w700,
              color: Theme.of(context).brightness == Brightness.dark
                  ? AppColors.textdarkmode
                  : AppColors.textlightmode,
              fontfamily: "bold",
            ),
            SizedBox(height: 5, width: 295),
            UiHelper.customText(
              text: "Please confirm your country code and enter ",
              fontsize: 14,
              context: context,
              fontweight: FontWeight.w500,
            ),
            UiHelper.customText(
              text: "your phone number",
              fontsize: 14,
              context: context,
              fontweight: FontWeight.w500,
            ),
            SizedBox(height: 20),
            UiHelper.customTextfield(
              controller: phoneController,
              text: "Phone Number",
              textinputtype: TextInputType.number,
              context: context,
              icondata: Icons.phone,
            
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(
        buttoname: "Continue",
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OTPScreen()),
          );
        },
        buttoncolor: Color(0xff002DE3),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
