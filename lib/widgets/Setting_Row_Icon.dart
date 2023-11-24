import 'package:flutter/material.dart';
class settingrowicon extends StatelessWidget {
  final icon;
  final text;
  final smalltext;

  const settingrowicon({super.key,
    required this.icon,
    required this.text,
    required this.smalltext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 15),
    child:Row(
      children: [
        Icon(icon,
          color: Colors.grey,
        ),
        SizedBox(width: 25,),
        RichText(text: TextSpan(
          children:
          [
            TextSpan(
                text: text,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                )
            ),
            TextSpan(
              text: smalltext,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ],
        ),
        ),
      ],
    ),
    );
  }
}
