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
  var arrContacts = [
    {
      "img": "Profile_pic1.png",
      "name": "Athalia Putri",
      "last_seen": "Last seen yesterday",
    },
    {"img": "Profile_pic2.png", "name": "Erlan Sadewa", "last_seen": "Online"},
    {
      "img": "Profile_pic3.png",
      "name": "Midala Huera",
      "last_seen": " Last seen 3 hours ago",
    },
    {"img": "Profile_pic4.png", "name": "Nafisa Gitari", "last_seen": "Online"},
    {
      "img": "Profile_pic5.png",
      "name": "Raki Devon",
      "last_seen": "Last seen yesterday",
    },
    {
      "img": "Profile_pic2.png",
      "name": "Salsabila Akira",
      "last_seen": "Online",
    },
    {
      "img": "Profile_pic1.png",
      "name": "Eleon Musk",
      "last_seen": "Last seen 30 minutes ago",
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
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ListTile(
                      leading: UiHelper.customImage(
                        imgurl: arrContacts[index]["img"].toString(),
                      ),
                      title: UiHelper.customText(
                        text: arrContacts[index]["name"].toString(),
                        fontsize: 15,
                        fontweight: FontWeight.w600,
                        context: context,
                      ),
                      subtitle: UiHelper.customText(
                        text: arrContacts[index]["last_seen"].toString(),
                        fontsize: 14,
                        fontweight: FontWeight.w500,
                        context: context,
                        color: Color(0xffADB5BD),
                      ),
                    ),
                  );
                },
                itemCount: arrContacts.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
