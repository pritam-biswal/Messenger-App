import 'package:flutter/material.dart';
import 'package:messenger_design/domain/constants/appcolors.dart';
import 'package:messenger_design/repository/screens/widgets/uihelper.dart';

class Contactscreen extends StatefulWidget {
  const Contactscreen({super.key});

  @override
  State<Contactscreen> createState() => _ContactscreenState();
}

class _ContactscreenState extends State<Contactscreen> {
  TextEditingController searchcontroller = TextEditingController();
  var arrContacts=[
    {}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        title: UiHelper.customText(
          text: "Contacts",
          fontsize: 18,
          fontweight: FontWeight.w700,
          context: context,
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            UiHelper.customTextfield(
              controller: searchcontroller,
              text: "Search",
              textinputtype: TextInputType.text,
              context: context,
              icondata: Icons.search,
            ),
          ],
        ),
      ),
    );
  }
}
