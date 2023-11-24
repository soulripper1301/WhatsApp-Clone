import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/Setting_Row_Icon.dart';
import 'package:whatsapp_clone/widgets/Setting_Row_Image.dart';

class Help extends StatelessWidget {
  const Help({Key? key});

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
                  const Text('Help',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                ],
              ),
              const SizedBox(height: 20,),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  children: [
                    Image(image: AssetImage('lib/Images/question.png'),
                      height: 21,
                      width: 21,
                    ),
                    SizedBox(width: 25,),
                    Text('Help Center',
                      style: TextStyle(
                          fontSize: 16
                      ),
                    )
                  ],
                ),
              ),
               Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  children: [
                    const Image(image: AssetImage('lib/Images/group grey.png'),
                      height: 21,
                      width: 21,
                    ),
                    const SizedBox(width: 25,),
                    RichText(text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Contact us',
                        style: TextStyle(
                            fontSize: 16,
                          color: Colors.black
                        ),
                      ),
                      TextSpan(
                        text: '\nQuestions? Need Help?',
                        style: TextStyle(
                            fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ] ,
                    ),
                    ),
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
                    Text('Terms and Privacy Policy',
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
                    Icon(Icons.info_outline_rounded,
                      color: Colors.grey,),
                    SizedBox(width: 25,),
                    Text('App info',
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
