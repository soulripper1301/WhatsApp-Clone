import 'package:flutter/material.dart';
class FAB extends StatelessWidget {
  final VoidCallback onPressed;
  final Icon;

  const FAB({super.key, // required functions
    required this.onPressed,
    required this.Icon,
  });


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,


      child: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: const Color(0xFF128C7E),
        child: Icon,
        onPressed: onPressed,
      ),
    );
  }
}

