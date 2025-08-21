import 'package:flutter/material.dart';
import 'package:messenger_design/domain/constants/appcolors.dart';
import 'package:messenger_design/repository/screens/bottomnavigation/chats/chat_screen.dart';
import 'package:messenger_design/repository/screens/bottomnavigation/contacts/contactscreen.dart';
import 'package:messenger_design/repository/screens/bottomnavigation/more/more_screen.dart';

class BottomnavigationScreen extends StatefulWidget {
  const BottomnavigationScreen({super.key});

  @override
  State<BottomnavigationScreen> createState() => _BottomnavigationScreenState();
}

class _BottomnavigationScreenState extends State<BottomnavigationScreen> {
  int currentIndex = 0;
  List<Widget> pages = [Contactscreen(), ChatScreen(), MoreScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Contacts"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.more), label: "More"),
        ],
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        showUnselectedLabels: false,
        showSelectedLabels: false,
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.bottomdark
            : AppColors.bottomlight,
        selectedIconTheme: IconThemeData(
          color: Theme.of(context).brightness == Brightness.dark
              ? AppColors.icondarkmode
              : AppColors.iconlightmode,
        ),
      ),
      body: IndexedStack(index: currentIndex, children: pages),
    );
  }
}
