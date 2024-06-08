import 'package:flutter/material.dart';
import 'package:messenger_app/CustomWidgets/custom_chat_widget.dart';
import 'package:messenger_app/CustomWidgets/custom_profile_preview.dart';

class ChatScreen extends StatefulWidget {
  static const String routeName = 'chat';

  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/images/own_profile_preview.png'),
                const Text(
                  '  Chats',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Image.asset('assets/images/camera_icon.png'),
                const SizedBox(width: 20),
                Image.asset('assets/images/new_message_icon.png'),
              ],
            ),
            const SizedBox(height: 30),
            const SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Color.fromRGBO(30, 31, 34, 0.1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              height: 80,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProfilePreview(
                      isOnline: false,
                    ),
                    ProfilePreview(
                      isOnline: true,
                    ),
                    ProfilePreview(
                      isOnline: true,
                    ),
                    ProfilePreview(
                      isOnline: true,
                    ),
                    ProfilePreview(
                      isOnline: true,
                    ),
                    ProfilePreview(
                      isOnline: true,
                    ),
                    ProfilePreview(
                      isOnline: true,
                    ),
                    ProfilePreview(
                      isOnline: true,
                    ),
                    ProfilePreview(
                      isOnline: true,
                    ),
                    ProfilePreview(
                      isOnline: true,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ChatWidget(
                      chatterName: 'Ahmed',
                      message: 'ehyaba',
                      sent: true,
                      userIsSender: true,
                    ),
                    ChatWidget(
                      chatterName: 'Yasser',
                      message: 'ehyaba',
                      sent: true,
                      userIsSender: true,
                    ),
                    ChatWidget(
                      chatterName: 'Mohammed',
                      message: 'ehyaba',
                      sent: true,
                      userIsSender: true,
                    ),
                    ChatWidget(
                      chatterName: 'ALi',
                      message: 'ehyaba',
                      sent: true,
                      userIsSender: true,
                    ),
                    ChatWidget(
                      chatterName: 'Sayed',
                      message: 'ehyaba',
                      sent: true,
                      userIsSender: true,
                    ),
                    ChatWidget(
                      chatterName: 'Marwan',
                      message: 'ehyaba',
                      sent: true,
                      userIsSender: true,
                    ),
                    ChatWidget(
                      chatterName: 'Wa7d kda',
                      message: 'ehyaba',
                      sent: true,
                      userIsSender: true,
                    ),
                    ChatWidget(
                      chatterName: 'ay 7aga',
                      message: 'ehyaba',
                      sent: true,
                      userIsSender: true,
                    ),
                    ChatWidget(
                      chatterName: 'msh far2a',
                      message: 'ehyaba',
                      sent: true,
                      userIsSender: true,
                    ),
                    ChatWidget(
                      chatterName: 'klo wahed',
                      message: 'ehyaba',
                      sent: true,
                      userIsSender: true,
                    ),
                    ChatWidget(
                      chatterName: '3ady',
                      message: 'ehyaba',
                      sent: true,
                      userIsSender: true,
                    ),
                  ],
                ),
              ),
            ),
            ButtonBar(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Image.asset('assets/images/messages_tab.png'),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset('assets/images/people_tab.png'),
                  onPressed: () {},
                ),
                // SizedBox(
                //   width: 20,
                // ),
                IconButton(
                  icon: Image.asset('assets/images/stories_tab.png'),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
