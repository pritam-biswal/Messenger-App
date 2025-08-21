import 'package:flutter/material.dart';
import 'package:messenger_design/domain/constants/appcolors.dart';
import 'package:messenger_design/repository/screens/widgets/uihelper.dart';

class ChatScreen extends StatelessWidget {
  TextEditingController search = TextEditingController();
  TextEditingController placeholder = TextEditingController();
  var arrContacts = [
    {
      "img": "Profile_pic1.png",
      "name": "Athalia Putri",
      "msg": "How is it going?",
      "date": "Today",
      "unread": "1",
    },
    {
      "img": "Profile_pic2.png",
      "name": "Erlan Sadewa",
      "msg": "Online",
      "date": "3/7",
      "unread": "3",
    },
    {
      "img": "Profile_pic3.png",
      "name": "Midala Huera",
      "msg": "Good morning, did you sleep well?",
      "date": "Today",
      "unread": "5",
    },
    {
      "img": "Profile_pic4.png",
      "name": "Nafisa Gitari",
      "msg": "Online",
      "date": "Today",
      "unread": "5",
    },
    {
      "img": "Profile_pic5.png",
      "name": "Raki Devon",
      "msg": "How is it going?",
      "date": "17/9",
      "unread": "5",
    },
    {
      "img": "Profile_pic2.png",
      "name": "Salsabila Akira",
      "msg": "Online",
      "date": "Today",
      "unread": "4",
    },
    {
      "img": "Profile_pic1.png",
      "name": "Eleon Musk",
      "msg": "How is it going?",
      "date": "Today",
      "unread": "2",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        title: UiHelper.customText(
          text: "Chats",
          fontsize: 18,
          fontweight: FontWeight.w700,
          context: context,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.chat_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.customImage(imgurl: "chat1.png"),
              SizedBox(width: 20),
              UiHelper.customImage(imgurl: "chat2.png"),
              SizedBox(width: 20),
              UiHelper.customImage(imgurl: "chat3.png"),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: [
                SizedBox(width: 23),
                UiHelper.customText(
                  text: "Your Story",
                  fontsize: 10,
                  fontweight: FontWeight.w600,
                  context: context,
                ),
                SizedBox(width: 23),

                UiHelper.customText(
                  text: "Midala Hu...",
                  fontsize: 10,
                  context: context,
                  fontweight: FontWeight.w600,
                ),
                SizedBox(width: 23),
                UiHelper.customText(
                  text: "Salsabila...",
                  fontsize: 10,
                  context: context,
                  fontweight: FontWeight.w600,
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Divider(color: Color(0xffEDEDED)),
          SizedBox(height: 20,),
          UiHelper.customTextfield(
            controller: search,
            text: "Search",
            textinputtype: TextInputType.text,
            context: context,
            icondata: Icons.search_outlined,
          ),
          SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: UiHelper.customImage(
                    imgurl: arrContacts[index]["img"].toString(),
                  ),
                  title: UiHelper.customText(
                    text: arrContacts[index]["name"].toString(),
                    fontsize: 14,
                    fontweight: FontWeight.w600,
                    context: context,
                  ),
                  subtitle: UiHelper.customText(
                    text: arrContacts[index]["msg"].toString(),
                    fontsize: 12,
                    color: Color(0xffADB5BD),
                    fontweight: FontWeight.w500,
                    context: context,
                  ),
                  trailing: Column(
                    children: [
                      UiHelper.customText(
                        text: arrContacts[index]["date"].toString(),
                        fontsize: 10,
                        fontweight: FontWeight.w500,
                        context: context,
                      ),
                      SizedBox(height: 2),
                      CircleAvatar(
                        backgroundColor: Color(0xffD2D5F9),
                        child: UiHelper.customText(
                          text: arrContacts[index]["unread"].toString(),
                          fontsize: 10,
                          fontweight: FontWeight.w600,
                          context: context,
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: arrContacts.length,
            ),
          ),
        ],
      ),
    );
  }
}
