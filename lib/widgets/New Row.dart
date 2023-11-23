import 'package:flutter/material.dart';
class newrow extends StatelessWidget {
  final image;
  final text;
  final qr;
  const newrow({super.key,
  required this.text,
    required this.image,
    required this.qr,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    child: Row(
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xFF128C7E),
          child: Image(image: AssetImage(image),
            height: 20,
            width: 20,
          ),

          ),
        SizedBox(width: 10,),
        Text(text,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
        ),
        SizedBox(width: 195,),
        Icon(qr,
        color: Colors.grey,
        ),
      ],
    ),
    );
  }
}
