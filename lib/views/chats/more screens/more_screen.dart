import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messanger_clone/extensions/app_exten.dart';

import '../../constants/app_colors.dart';
import '../../widgets/ui_helper.dart';

class MoreScreen extends StatelessWidget {
  var contacts = [
    {'icon': Icons.person, 'txt': 'Account'},
    {'icon': CupertinoIcons.chat_bubble, 'txt': 'Chats '},
    {'icon': Icons.sunny, 'txt': 'Appereance'},
    {'icon': Icons.notifications_active, 'txt': 'Notifications'},
    {'icon': Icons.privacy_tip, 'txt': 'Privacy'},
    {'icon': Icons.folder, 'txt': 'Data Usage'},
    {'icon': Icons.help, 'txt': 'Help'},
    {'icon': Icons.mail, 'txt': 'Invite your friends'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Theme.of(context).brightness == Brightness.light
              ? AppColors.scaffoldlight
              : AppColors.scaffolddark,
      appBar: AppBar(
        title: UiHelper.customText(
          title: 'More',
          fontSize: 18,
          context: context,
          fontFamily: "Bold",
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        children: [
          ListTile(
            leading: UiHelper.customImage(
              image:
                  Theme.of(context).brightness == Brightness.dark
                      ? 'darkprofile.png'
                      : 'lightprofile.png',
            ),
            title: UiHelper.customText(
              title: 'M Hamza Khan',
              fontSize: 14,
              context: context,
              fontFamily: "Bold",
              fontWeight: FontWeight.bold,
            ),
            subtitle: UiHelper.customText(
              title: '+62 04921011',
              fontSize: 12,
              context: context,
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.arrow_right),
            ),
          ),
          20.0.ht,
          Expanded(
            child: ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (_, i) {
                var cont = contacts[i];
                return ListTile(
                  title: UiHelper.customText(
                    title: cont['txt'].toString(),
                    fontSize: 14,
                    context: context,
                  ),
                  leading: Icon(
                    cont['icon'] as IconData,
                    color:
                        Theme.of(context).brightness == Brightness.dark
                            ? AppColors.icondarkmode
                            : AppColors.iconlightmode,
                  ),
                  trailing: Icon(CupertinoIcons.forward),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
