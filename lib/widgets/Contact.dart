import 'package:flutter/material.dart';
class contacttile extends StatelessWidget {
  final imageUrl;
  final chatTitle;
  final chatMessage;
  const contacttile({super.key,
  required this.imageUrl,
    required this.chatTitle,
    required this.chatMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(imageUrl!),
        ),
        Expanded(
          child: ListTile(
              title: Text('$chatTitle',
                  style: const TextStyle(fontWeight: FontWeight.w600)),
              subtitle: Row(children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Text(
                      '$chatMessage',
                      style: const TextStyle(overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
              ],
              ),
              ),
        ),
      ],
    );
  }
}
