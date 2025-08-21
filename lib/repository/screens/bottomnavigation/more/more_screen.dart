import 'package:flutter/material.dart';
import 'package:messenger_design/domain/constants/appcolors.dart';
import 'package:messenger_design/repository/screens/widgets/uihelper.dart';

class MoreScreen extends StatelessWidget {
  var arrMore = [
    {"icon": Icons.person_2_outlined, "text": "Account"},
    {"icon": Icons.chat_bubble_outline, "text": "Chats"},
    {"icon": Icons.wb_sunny_outlined, "text": "Appereance"},
    {"icon": Icons.notification_add_outlined, "text": "Notification"},
    {"icon": Icons.privacy_tip_outlined, "text": "Privacy"},
    {"icon": Icons.data_exploration_outlined, "text": "Data Usage"},
    {"icon": Icons.help_outline_outlined, "text": "Help"},
    {"icon": Icons.mail_lock_outlined, "text": "Invite Your Friends"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.customText(
          text: "More",
          fontsize: 18,
          fontweight: FontWeight.w600,
          context: context,
        ),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
      ),
      body: Column(
        children: [
          SizedBox(height: 5),
          ListTile(
            leading: Theme.of(context).brightness == Brightness.dark
                ? UiHelper.customImage(imgurl: "dark_avatar.png")
                : UiHelper.customImage(imgurl: "light_avatar.png"),
            title: UiHelper.customText(
              text: "Pritam Biswal",
              fontsize: 18,
              context: context,
              fontweight: FontWeight.w600,
            ),
            subtitle: UiHelper.customText(
              text: "+62 1309 - 1710",
              fontsize: 12,
              fontweight: FontWeight.w500,
              context: context,
            ),
            trailing: Icon(Icons.arrow_circle_right_outlined, size: 30),
          ),
          SizedBox(height: 25),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(arrMore[index]["icon"] as IconData),
                  iconColor: Theme.of(context).brightness == Brightness.dark
                      ? AppColors.icondarkmode
                      : AppColors.iconlightmode,
                  title: UiHelper.customText(
                    text: arrMore[index]["text"].toString(),
                    fontsize: 14,
                    fontweight: FontWeight.w600,
                    context: context,
                  ),
                );
              },
              itemCount: arrMore.length,
            ),
          ),
        ],
      ),
    );
  }
}
