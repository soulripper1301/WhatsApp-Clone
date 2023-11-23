import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/Chat.dart';
class callbar extends StatelessWidget {
  const callbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color(0xFF1F2C34),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.speaker_2_fill),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.bluetooth),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.video_camera_solid),
            iconSize: 35,
            color: Colors.grey,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.mic_slash_fill),
            color: Colors.white,
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
              },
            child: const CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(Icons.call_end,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
