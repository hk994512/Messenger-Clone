import 'package:flutter/material.dart';
import 'package:messanger_clone/extensions/app_exten.dart';
import '/views/constants/app_colors.dart';
import '/views/widgets/ui_helper.dart';

class ContactsScreen extends StatelessWidget {
  // const ContactsScreen({super.key});
  var  searchController = TextEditingController();
  var arrContacts = [
    {
      "img": "Frame 3293.png",
      "name": "Athalia Putri",
      "lastseen": "Last seen yesterday",
    },
    {"img": "Avatar.png", "name": "Erlan Sadewa", "lastseen": "Online"},
    {
      "img": "Avatar (1).png",
      "name": "Midala Huera",
      "lastseen": "Last seen 3 hours ago",
    },
    {"img": "Avatar (2).png", "name": "Nafisa Gitari", "lastseen": "Online"},
    {"img": "Frame 3293 (1).png", "name": "Raki Devon", "lastseen": "Online"},
    {
      "img": "Avatar (3).png",
      "name": "Salsabila Akira",
      "lastseen": "Last seen 30 minutes ago",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Theme.of(context).brightness == Brightness.dark
              ? AppColors.bottomdark
              : AppColors.bottomlight,
      appBar: AppBar(
        title: UiHelper.customText(
          title: 'Contacts',
          fontSize: 18,
          context: context,
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Center(
        child: Column(
          children: [
            30.0.ht,
            UiHelper.customTextField(
              iconData: Icons.search,
              controller: searchController,
              text: 'Search',
              keyboardType: TextInputType.text,
              context: context,
            ),
            30.0.ht,
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(left: 20),
                itemCount: arrContacts.length,
                itemBuilder: (_, i) {
                  var contact = arrContacts[i];
                  return ListTile(
                    leading: UiHelper.customImage(
                      image: contact['img'].toString(),
                    ),
                    title: UiHelper.customText(
                      color: Color(0xffadb5bd),
                      title: contact['name'].toString(),
                      fontSize: 14,
                      context: context,
                      fontWeight: FontWeight.w600,
                    ),
                    subtitle: UiHelper.customText(
                      title: contact['lastseen'].toString(),
                      fontSize: 12,
                      context: context,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
