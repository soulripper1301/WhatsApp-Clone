import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/Setting_Row_Icon.dart';
import 'package:whatsapp_clone/widgets/Setting_Row_Image.dart';

class Accounts extends StatelessWidget {
  const Accounts({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(
                child: Image(
                  image: AssetImage('lib/Images/back1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(height: 30,),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.white,
                  ),
                  const Text('Account',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                ],
              ),
              SizedBox(height: 20,),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                children: [
                Image(image: AssetImage('lib/Images/shield.png'),
                height: 21,
                  width: 21,
                ),
                  SizedBox(width: 25,),
                  Text('Security notifications',
                  style: TextStyle(
                    fontSize: 16
                  ),
                  )
                ],
              ),
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  children: [
                    Image(image: AssetImage('lib/Images/verify.png'),
                      height: 21,
                      width: 21,
                    ),
                    SizedBox(width: 25,),
                    Text('Two-step verification',
                      style: TextStyle(
                          fontSize: 16
                      ),
                    )
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  children: [
                    Image(image: AssetImage('lib/Images/send.png'),
                      height: 21,
                      width: 21,
                    ),
                    SizedBox(width: 25,),
                    Text('Change number',
                      style: TextStyle(
                          fontSize: 16
                      ),
                    )
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  children: [
                    Image(image: AssetImage('lib/Images/doc.png'),
                      height: 21,
                      width: 21,
                    ),
                    SizedBox(width: 25,),
                    Text('Request account info',
                      style: TextStyle(
                          fontSize: 16
                      ),
                    )
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  children: [
                    Icon(Icons.person_add_alt_rounded,
                    color: Colors.grey,),
                    SizedBox(width: 25,),
                    Text('Add account',
                      style: TextStyle(
                          fontSize: 16
                      ),
                    )
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  children: [
                    Icon(Icons.delete,
                    color: Colors.grey,),
                    SizedBox(width: 25,),
                    Text('Delete account',
                      style: TextStyle(
                          fontSize: 16
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
