import 'package:flutter/material.dart';
class settingrow extends StatelessWidget {
  final icon;

  const settingrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(key)
      ],
    );
  }
}
