import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/Contact.dart';
import 'package:whatsapp_clone/widgets/New%20Row.dart';
class addcontact extends StatelessWidget {
  const addcontact({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30,),
              Row(
                children: [
                  IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                  color: Colors.white,
                  ),
                  RichText(text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Select contact',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white
                        ),
                      ),
                      TextSpan(
                       text: '\n332 contact',
                       style: TextStyle(
                         fontSize: 14,
                         color: Colors.white
                       ),
                      ),
                    ],
                  ),
                  ),
                  const SizedBox(width: 130,),
                  IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.search),
                  color: Colors.white,
                  ),
                  PopupMenuButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    itemBuilder: (context) {
                      return [
                        const PopupMenuItem(child: Text('Invite a friend')),
                        const PopupMenuItem(child: Text('Contacts')),
                        const PopupMenuItem(child: Text('Refresh')),
                        const PopupMenuItem(child: Text('Help')),
                      ];
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 770,
                child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25,),
                    newrow(text: 'New group', image: 'lib/Images/group.png', qr: null,),
                    SizedBox(height: 25,),
                    newrow(text: 'New contact', image: 'lib/Images/add.png', qr: Icons.qr_code,),
                    SizedBox(height: 25,),
                    newrow(text: 'New community', image: 'lib/Images/team.png', qr: null,),
                    SizedBox(height: 20,),
                    Text('Frequently Contacted',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 10,),
                    contacttile(
                        imageUrl: 'https://th.bing.com/th/id/OIP.sHK7Wv_mH26eroiXGgYQRgHaJO?w=164&h=205&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                        chatTitle: 'Dr. Frankestein',
                      chatMessage: 'Its Alive',
                    ),
                    contacttile(
                    chatTitle: "Terminator",
                        chatMessage: 'Hasta la vista, baby.',
                    imageUrl:
                    'https://th.bing.com/th/id/OIP.y_pgj3ofnuUsoRIoBka6FAHaLH?w=208&h=305&c=7&r=0&o=5&dpr=1.3&pid=1.7'
                    ),
                    contacttile(
                        chatTitle: "Buzz Lightyear",
                        chatMessage: 'To Infinity And beyond',
                        imageUrl:
                        'https://th.bing.com/th/id/OIP.ZTXP_XBZvXhgH0nPLRH5ggHaDt?w=334&h=175&c=7&r=0&o=5&dpr=1.3&pid=1.7'
                    ),
                    contacttile(
                        chatTitle: "Tony Stark",
                        chatMessage: 'Jarvis Open the Helmet',
                        imageUrl:
                        'https://th.bing.com/th/id/OIP.08bGE4YPB9q_OZ9hS45YpgHaGm?w=188&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'
                    ),
                    contacttile(
                        chatTitle: "Bruce Banner",
                        chatMessage: 'Hulk Smash',
                        imageUrl:
                        'https://wallpapercave.com/wp/GRDCsEG.jpg'
                    ),
                    SizedBox(height: 10,),
                    Text('Contacts on Whatsapp',
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),
                    SizedBox(height: 10,),
                    contacttile(
                        chatTitle: "Arya Stark",
                        chatMessage: 'I wish GoT had better ending',
                        imageUrl:
                        'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/09/maisie-williams-aka-arya-stark-of-game-of-thrones-someone-told-me-in-season-three-that-i-was-going-to-kill-the-night-king001.jpg'
                    ),
                    contacttile(
                        chatTitle: "Peter Parker",
                        chatMessage: "Mr. Stark I don't feel so good",
                        imageUrl:
                        'https://th.bing.com/th/id/OIP.hL3HnPj5ZboGv3xA1res2wHaGI?pid=ImgDet&rs=1'
                    ),
                    contacttile(
                        chatTitle: "Thanos",
                        chatMessage: "you should have aimed for the head",
                        imageUrl:
                        'https://th.bing.com/th/id/OIP.jdfND-tXUlWb7fz8BGIW7wHaEo?w=272&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'
                    ),
                    contacttile(
                      imageUrl: 'https://th.bing.com/th/id/OIP.sHK7Wv_mH26eroiXGgYQRgHaJO?w=164&h=205&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                      chatTitle: 'Dr. Frankestein',
                      chatMessage: 'Its Alive',
                    ),
                    contacttile(
                        chatTitle: "Terminator",
                        chatMessage: 'Hasta la vista, baby.',
                        imageUrl:
                        'https://th.bing.com/th/id/OIP.y_pgj3ofnuUsoRIoBka6FAHaLH?w=208&h=305&c=7&r=0&o=5&dpr=1.3&pid=1.7'
                    ),
                    contacttile(
                        chatTitle: "Buzz Lightyear",
                        chatMessage: 'To Infinity And beyond',
                        imageUrl:
                        'https://th.bing.com/th/id/OIP.ZTXP_XBZvXhgH0nPLRH5ggHaDt?w=334&h=175&c=7&r=0&o=5&dpr=1.3&pid=1.7'
                    ),
                    contacttile(
                        chatTitle: "Tony Stark",
                        chatMessage: 'Jarvis Open the Helmet',
                        imageUrl:
                        'https://th.bing.com/th/id/OIP.08bGE4YPB9q_OZ9hS45YpgHaGm?w=188&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'
                    ),
                    contacttile(
                        chatTitle: "Bruce Banner",
                        chatMessage: 'Hulk Smash',
                        imageUrl:
                        'https://wallpapercave.com/wp/GRDCsEG.jpg'
                    ),
                    contacttile(
                        chatTitle: "Arya Stark",
                        chatMessage: 'I wish GoT had better ending',
                        imageUrl:
                        'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/09/maisie-williams-aka-arya-stark-of-game-of-thrones-someone-told-me-in-season-three-that-i-was-going-to-kill-the-night-king001.jpg'
                    ),
                    contacttile(
                        chatTitle: "Peter Parker",
                        chatMessage: "Mr. Stark I don't feel so good",
                        imageUrl:
                        'https://th.bing.com/th/id/OIP.hL3HnPj5ZboGv3xA1res2wHaGI?pid=ImgDet&rs=1'
                    ),
                    contacttile(
                        chatTitle: "Thanos",
                        chatMessage: "you should have aimed for the head",
                        imageUrl:
                        'https://th.bing.com/th/id/OIP.jdfND-tXUlWb7fz8BGIW7wHaEo?w=272&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'
                    ),
                  ],
                ),
              ),
              ),
    ),
            ],
          ),
        ],
      ),
    );
  }
}
