import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/Accounts.dart';
import 'package:whatsapp_clone/screens/Help.dart';
import 'package:whatsapp_clone/screens/InviteaFriend.dart';
import 'package:whatsapp_clone/widgets/Setting_Row_Icon.dart';
import 'package:whatsapp_clone/widgets/Setting_Row_Image.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key});

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
                  const Text('Settings',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 220,),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                    color: Colors.white,
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                              'https://th.bing.com/th/id/OIP.nkBbIemZA9epEhhiG_uezwHaFc?w=204&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                            ),
                          ),
                          const SizedBox(width: 10,),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'SoulRipper',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: '\nHey there! I am using whatsapp',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 48,),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.qr_code_2,
                              color: Color(0xFF128C7E),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_circle_down,
                              color: Color(0xFF128C7E),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 395,
                      height: 0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  const Accounts()),);
                      },
                      child: const settingrowimage(
                      text: 'Account',
                      smalltext: '\nSecurity notification, change number',
                      image: 'lib/Images/key.png',
                    ),
                    ),
                    const SizedBox(height: 30,),
                    const settingrowicon(
                      text: 'Privacy',
                      smalltext: '\nBlock contact, disappearing messages',
                      icon: Icons.lock,
                    ),
                    const SizedBox(height: 30,),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          const Image(image: AssetImage(
                              'lib/Images/avatar.png'),
                            height: 23,
                            width: 23,
                          ),
                          const SizedBox(width: 27,),
                          RichText(text: const TextSpan(
                            children:
                            [
                              TextSpan(
                                  text: 'Avatar',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  )
                              ),
                              TextSpan(
                                text: "\nCreate, edit, profile photo",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          const Image(image: AssetImage(
                              'lib/Images/message icon.png'),
                            height: 23,
                            width: 23,
                          ),
                          const SizedBox(width: 27,),
                          RichText(text: const TextSpan(
                            children:
                            [
                              TextSpan(
                                  text: 'Chats',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  )
                              ),
                              TextSpan(
                                text: "\nTheme, wallpaper, chathistory",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30,),
                    const settingrowicon(
                        icon: Icons.notifications_sharp,
                        text: 'Notification',
                        smalltext: '\nMessage, group & call tones'
                    ),
                    const SizedBox(height: 30,),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          const Image(image: AssetImage(
                              'lib/Images/storage.png'),
                            height: 23,
                            width: 23,
                          ),
                          const SizedBox(width: 27,),
                          RichText(text: const TextSpan(
                            children:
                            [
                              TextSpan(
                                  text: 'Storage and data',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  )
                              ),
                              TextSpan(
                                text: "\nNetwork usage, auto-download",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30,),
                    const settingrowimage(
                      text: 'App language',
                      smalltext: "\nEnglish (device's language)",
                      image: 'lib/Images/world-wide-web grey.png',
                    ),
                    const SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  const Help()),);
                      },
                      child: Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          const Image(image: AssetImage(
                              'lib/Images/question.png'),
                            height: 23,
                            width: 23,
                          ),
                          const SizedBox(width: 27,),
                          RichText(text: const TextSpan(
                            children:
                            [
                              TextSpan(
                                  text: 'Help',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  )
                              ),
                              TextSpan(
                                text: "\nHelp center, contact us, privacy policy",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          ),
                        ],
                      ),
                    ),
                    ),
                    const SizedBox(height: 30,),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  const inviteafriend()),);
                      },
                      child: const settingrowimage(
                      text: 'Invite a friend',
                      smalltext: null,
                      image: 'lib/Images/group grey.png',
                    ),
                    ),
                    const SizedBox(height: 110,),

                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('from',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('lib/Images/meta.png'),
                            height: 20,
                            width: 20,
                            ),
                            Text('Meta',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14
                            ),
                            ),
                          ],
                        ),

                      ],
                    ),
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
