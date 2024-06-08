import 'package:flutter/material.dart';

class InChatScreen extends StatelessWidget {
  static const String routeName = '/inChat';
  final String chatterName;

  const InChatScreen({super.key, required this.chatterName});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const SizedBox(
              height: 250,
            ),
            Image.asset(
              'assets/images/chat_person.png',
              height: 100,
              width: 100,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 10),
            Text(
              chatterName,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text("You're friends on facebook"),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  IconButton(
                    icon: Image.asset('assets/images/actions.png'),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset('assets/images/photo.png'),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset('assets/images/gallery.png'),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset('assets/images/audio.png'),
                    onPressed: () {},
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Row(
                        children: [
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Type a message',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.send,
                              color: Color.fromRGBO(5, 132, 254, 1),
                            ),
                            onPressed: () {
                              // Add your send message functionality here
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Image.asset('assets/images/like.png'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
