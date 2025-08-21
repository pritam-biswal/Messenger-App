import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_design/domain/constants/appcolors.dart';
import 'package:messenger_design/repository/screens/bottomnavigation/bottomnavigation_screen.dart';
import 'package:messenger_design/repository/screens/widgets/uihelper.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController firstname = TextEditingController();

  TextEditingController lastname = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
        title: UiHelper.customText(
          text: "Your Profile",
          fontsize: 20,
          context: context,
          fontweight: FontWeight.w600,
          fontfamily: "bold",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Theme.of(context).brightness == Brightness.dark
                ? UiHelper.customImage(imgurl: "dark_avatar.png")
                : UiHelper.customImage(imgurl: "light_avatar.png"),
            SizedBox(height: 30),
            UiHelper.customTextfield(
              controller: firstname,
              text: "First Name (Required)",
              textinputtype: TextInputType.name,
              context: context,
              icondata: Icons.person,
            ),
            SizedBox(height: 10),
            UiHelper.customTextfield(
              controller: lastname,
              text: "Last Name (Optional)",
              textinputtype: TextInputType.name,
              context: context,
              icondata: CupertinoIcons.person_2_alt,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: UiHelper.customButton(
        buttoname: "Save",
        callback: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => BottomnavigationScreen()),
          );
        },
      ),
    );
  }
}
