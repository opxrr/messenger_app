import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  final String chatterName;
  final String message;
  final bool sent;
  final bool userIsSender;

  const ChatWidget(
      {super.key,
      required this.chatterName,
      required this.message,
      required this.sent,
      required this.userIsSender});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          SizedBox(
            height: 60,
            width: 60,
            child: Image.asset(
              'assets/images/chat_person.png',
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chatterName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              userIsSender == true
                  ? Text(
                      'You : $message . Sat',
                      style: const TextStyle(color: Colors.grey),
                    )
                  : Text("$message . Sat",
                      style: const TextStyle(color: Colors.grey)),
            ],
          ),
          const SizedBox(
            width: 150,
          ),
          sent == true
              ? Image.asset('assets/images/sent.png')
              : Image.asset('assets/images/not_sent.png')
        ],
      ),
    );
  }
}
