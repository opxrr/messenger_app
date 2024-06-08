import 'package:flutter/material.dart';

class ProfilePreview extends StatelessWidget {
  final bool isOnline;

  const ProfilePreview({
    super.key,
    required this.isOnline,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              isOnline == true
                  ? SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.asset(
                        'assets/images/profile_preview.png',
                        fit: BoxFit.fill,
                      ))
                  : Image.asset('assets/images/own_story.png'),
              isOnline == true
                  ? Image.asset('assets/images/on_tag.png')
                  : const SizedBox.shrink(),
            ],
          ),
          isOnline == true
              ? const Expanded(
                  child: Text(
                    'Alo',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.black38),
                  ),
                )
              : const Expanded(
                  child: Text(
                    'Your Story',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.black38),
                  ),
                ),
        ],
      ),
    );
  }
}
