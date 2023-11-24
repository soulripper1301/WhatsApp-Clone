import 'package:flutter/material.dart';
class settingrowimage extends StatelessWidget {
  final text;
  final smalltext;
  final image;

  const settingrowimage({super.key,
    required this.text,
    required this.smalltext,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 15),
    child: Row(
      children: [
        Image(image: AssetImage(image),
          height: 25,
          width: 25,
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
