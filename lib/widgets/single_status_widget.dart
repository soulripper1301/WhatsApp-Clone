import 'package:flutter/material.dart';

class SingleStatusItem extends StatelessWidget {
  final String? statusTitle;
  final String? statusTime;
  final String? statusImage;
  const SingleStatusItem({
    Key? key,
    this.statusTitle,
    this.statusTime,
    this.statusImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundColor: Colors.green,
              radius: 30,
              child: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage('$statusImage'),
              ),
            ),
          ],
        ),
        Expanded(
          child: ListTile(
            title: Text('$statusTitle'),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Text("$statusTime"),
            ),
          ),
        ),
      ],
    );
  }
}