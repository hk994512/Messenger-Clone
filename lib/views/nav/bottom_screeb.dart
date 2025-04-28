import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messanger_clone/views/chats/chat_screen.dart';
import 'package:messanger_clone/views/chats/more%20screens/more_screen.dart';
import 'package:messanger_clone/views/constants/app_colors.dart';
import 'package:messanger_clone/views/nav/contacts_screen.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({super.key});

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  final List<Widget> pages = [ContactsScreen(), ChatScreen(), MoreScreen()];
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:
            Theme.of(context).brightness == Brightness.dark
                ? AppColors.bottomdark
                : AppColors.bottomlight,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(
          color:
              Theme.of(context).brightness == Brightness.dark
                  ? AppColors.icondarkmode
                  : AppColors.iconlightmode,
        ),
        onTap:
            (value) => setState(() {
              currentIndex = value;
            }),
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_2_alt),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_fill),
            label: 'Chats',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'More'),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
