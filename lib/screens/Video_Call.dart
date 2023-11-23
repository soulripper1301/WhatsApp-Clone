import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/videocallappbar.dart';
class videocall extends StatelessWidget {
  final contact;
  const videocall({super.key,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: NetworkImage('https://i.pinimg.com/originals/97/c0/07/97c00759d90d786d9b6096d274ad3e07.png'),
    fit: BoxFit.cover,
    ),
    ),
        child: Expanded(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Row(
                children: [
                  const SizedBox(width: 120,),
                  const Icon(CupertinoIcons.lock_fill,
                    color: Colors.grey,
                  ),
                  const Text('End-to-end encrypted',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(width: 60,),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.person_add_alt_1_sharp),
                    color: Colors.white,
                  )
                ],
              ),
              const SizedBox(height: 20,),

              Text(contact,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 15,),
              const Text('Ringing',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),

      ),
      bottomNavigationBar: const videobar(),
    );
  }
}
