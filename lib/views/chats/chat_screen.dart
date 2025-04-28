import 'package:flutter/material.dart';
import 'package:messanger_clone/extensions/app_exten.dart';
import 'package:messanger_clone/views/widgets/ui_helper.dart';

import '../constants/app_colors.dart';

class ChatScreen extends StatelessWidget {
  // const ChatScreen({super.key});
  final searchController = TextEditingController();
  var arrContacts = [
    {
      "img": "Avatar.png",
      "name": "Erlan Sadewa",
      "msg": "Good morning did you sleep well?",
      "date": "Today",
      "msgCount": "1",
    },

    {
      "img": "Avatar (2).png",
      "name": "Nafisa Gitari",
      "msg": "How are you doing?",
      "date": "Today",
      "msgCount": "3",
    },
    {
      "name": "Raki Devon",
      "img": "Frame 3293 (1).png",
      "msg": "Where are you?",
      "date": "Yesterday",
      "msgCount": "2",
    },
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
          title: 'Chats',
          fontSize: 18,
          context: context,
          fontFamily: "Bold",
          fontWeight: FontWeight.bold,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.mark_as_unread_rounded),
          ),

          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              25.0.wt,
              MyStory(image: 'story.png', title: 'Your Story'),
              10.0.wt,
              MyStory(image: 'Frame 3293.png', title: 'Athalia Putri'),
              10.0.wt,
              MyStory(image: 'Avatar (3).png', title: 'Salsabila Akira'),
            ],
          ),
          5.0.ht,
          Divider(color: Color(0xffadb5bd)),
          UiHelper.customTextField(
            iconData: Icons.search,
            controller: searchController,
            text: 'Search',
            keyboardType: TextInputType.text,
            context: context,
          ),
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
                    title: contact['msg'].toString(),
                    fontSize: 12,
                    context: context,
                    color: Color(0xffadb5bd),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UiHelper.customText(
                        title: contact['date'].toString(),
                        fontSize: 10,
                        context: context,
                        color: Color(0xffA444A4),
                      ),
                      5.0.ht,
                      CircleAvatar(
                        radius: 10,
                        child: UiHelper.customText(
                          title: contact['msgCount'].toString(),
                          fontSize: 8,
                          context: context,
                        ),
                        backgroundColor: Color(0xffD2d5f9),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MyStory extends StatelessWidget {
  const MyStory({super.key, required this.image, required this.title});
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        spacing: 8,
        children: [
          UiHelper.customImage(image: image),
          UiHelper.customText(
            title: title,
            fontSize: 14,
            context: context,
            fontFamily: 'Bold',
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
