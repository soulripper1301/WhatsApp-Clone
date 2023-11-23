import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/Add_Contact.dart';
import 'package:whatsapp_clone/widgets/FAB.dart';
import 'package:whatsapp_clone/widgets/single_chat_widget.dart';
import 'package:whatsapp_clone/widgets/Chat.dart';

class ChatsTab extends StatelessWidget {
  const ChatsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            InkWell(onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) =>
                const chat(
                  image: 'https://th.bing.com/th/id/OIP.sHK7Wv_mH26eroiXGgYQRgHaJO?w=164&h=205&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                  text: 'Dr. Frankestein',
                ),
                ),
              );
            },
              child: const SingleChatWidget(
                  chatTitle: "Dr. Frankestein",
                  chatMessage: 'Its Alive,Its Alive',
                  seenStatusColor: Colors.blue,
                  imageUrl:
                  'https://th.bing.com/th/id/OIP.sHK7Wv_mH26eroiXGgYQRgHaJO?w=164&h=205&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
            ),
            InkWell(onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>
                const chat(
                  image: 'https://th.bing.com/th/id/OIP.y_pgj3ofnuUsoRIoBka6FAHaLH?w=208&h=305&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                  text: 'Terminator',)),);
            },
              child: const SingleChatWidget(
                  chatTitle: "Terminator",
                  chatMessage: 'Hasta la vista, baby.',
                  seenStatusColor: Colors.grey,
                  imageUrl:
                  'https://th.bing.com/th/id/OIP.y_pgj3ofnuUsoRIoBka6FAHaLH?w=208&h=305&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
            ),
            InkWell(onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) =>
                const chat(
                  image: 'https://th.bing.com/th/id/OIP.ZTXP_XBZvXhgH0nPLRH5ggHaDt?w=334&h=175&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                  text: 'Buzz Lightyear',
                ),
                ),
              );
            },
              child: const SingleChatWidget(
                  chatTitle: "Buzz Lightyear",
                  chatMessage: 'To Infinity And beyond',
                  seenStatusColor: Colors.grey,
                  imageUrl:
                  'https://th.bing.com/th/id/OIP.ZTXP_XBZvXhgH0nPLRH5ggHaDt?w=334&h=175&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
            ),
            InkWell(onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) =>
                const chat(
                  image: 'https://th.bing.com/th/id/OIP.08bGE4YPB9q_OZ9hS45YpgHaGm?w=188&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                  text: 'Tony Stark',
                ),
                ),
              );

            },
              child: const SingleChatWidget(
                  chatTitle: "Tony Stark",
                  chatMessage: 'Jarvis Open the Helmet',
                  seenStatusColor: Colors.blue,
                  imageUrl:
                  'https://th.bing.com/th/id/OIP.08bGE4YPB9q_OZ9hS45YpgHaGm?w=188&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
            ),
            InkWell(onTap: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) =>
              const chat(
                image: 'https://wallpapercave.com/wp/GRDCsEG.jpg',
                text: 'Bruce Banner',
              ),
              ),
            );},
              child: const SingleChatWidget(
                  chatTitle: "Bruce Banner",
                  chatMessage: 'Hulk Smash',
                  seenStatusColor: Colors.grey,
                  imageUrl:
                  'https://wallpapercave.com/wp/GRDCsEG.jpg'),

            ),
            InkWell(onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) =>
                const chat(
                  image: 'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/09/maisie-williams-aka-arya-stark-of-game-of-thrones-someone-told-me-in-season-three-that-i-was-going-to-kill-the-night-king001.jpg',
                  text: 'Arya Stark',
                ),
                ),
              );
            },
              child: const SingleChatWidget(
                  chatTitle: "Arya Stark",
                  chatMessage: 'I wish GoT had better ending',
                  seenStatusColor: Colors.blue,
                  imageUrl:
                  'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/09/maisie-williams-aka-arya-stark-of-game-of-thrones-someone-told-me-in-season-three-that-i-was-going-to-kill-the-night-king001.jpg'),
            ),
            InkWell(onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) =>
                const chat(
                  image: 'https://th.bing.com/th/id/OIP.hL3HnPj5ZboGv3xA1res2wHaGI?pid=ImgDet&rs=1',
                  text: 'Peter Parker',
                ),
                ),
              );
            },
              child: const SingleChatWidget(
                  chatTitle: "Peter Parker",
                  chatMessage: "Mr. Stark I don't feel so good",
                  seenStatusColor: Colors.blue,
                  imageUrl:
                  'https://th.bing.com/th/id/OIP.hL3HnPj5ZboGv3xA1res2wHaGI?pid=ImgDet&rs=1'),
            ),
            InkWell(onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) =>
                const chat(
                  image: 'https://th.bing.com/th/id/OIP.jdfND-tXUlWb7fz8BGIW7wHaEo?w=272&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                  text: 'Thanos',
                ),
                ),
              );
            },
              child: const SingleChatWidget(
                  chatTitle: "Thanos",
                  chatMessage: "you should have aimed for the head",
                  seenStatusColor: Colors.blue,
                  imageUrl:
                  'https://th.bing.com/th/id/OIP.jdfND-tXUlWb7fz8BGIW7wHaEo?w=272&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
            ),
            InkWell(onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) =>
                const chat(
                  image: 'https://th.bing.com/th/id/OIP.sHK7Wv_mH26eroiXGgYQRgHaJO?w=164&h=205&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                  text: 'Dr. Frankestein',
                ),
                ),
              );
            },
              child: const SingleChatWidget(
                  chatTitle: "Dr. Frankestein",
                  chatMessage: 'Its Alive,Its Alive',
                  seenStatusColor: Colors.blue,
                  imageUrl:
                  'https://th.bing.com/th/id/OIP.sHK7Wv_mH26eroiXGgYQRgHaJO?w=164&h=205&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
            ),
            InkWell(onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>
                const chat(
                  image: 'https://th.bing.com/th/id/OIP.y_pgj3ofnuUsoRIoBka6FAHaLH?w=208&h=305&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                  text: 'Terminator',)),);
            },
              child: const SingleChatWidget(
                  chatTitle: "Terminator",
                  chatMessage: 'Hasta la vista, baby.',
                  seenStatusColor: Colors.grey,
                  imageUrl:
                  'https://th.bing.com/th/id/OIP.y_pgj3ofnuUsoRIoBka6FAHaLH?w=208&h=305&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
            ),
            InkWell(onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) =>
                const chat(
                  image: 'https://th.bing.com/th/id/OIP.ZTXP_XBZvXhgH0nPLRH5ggHaDt?w=334&h=175&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                  text: 'Buzz Lightyear',
                ),
                ),
              );
            },
              child: const SingleChatWidget(
                  chatTitle: "Buzz Lightyear",
                  chatMessage: 'To Infinity And beyond',
                  seenStatusColor: Colors.grey,
                  imageUrl:
                  'https://th.bing.com/th/id/OIP.ZTXP_XBZvXhgH0nPLRH5ggHaDt?w=334&h=175&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
            ),
            InkWell(onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) =>
                const chat(
                  image: 'https://th.bing.com/th/id/OIP.08bGE4YPB9q_OZ9hS45YpgHaGm?w=188&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                  text: 'Tony Stark',
                ),
                ),
              );

            },
              child: const SingleChatWidget(
                  chatTitle: "Tony Stark",
                  chatMessage: 'Jarvis Open the Helmet',
                  seenStatusColor: Colors.blue,
                  imageUrl:
                  'https://th.bing.com/th/id/OIP.08bGE4YPB9q_OZ9hS45YpgHaGm?w=188&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
            ),
            InkWell(onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) =>
                const chat(
                  image: 'https://wallpapercave.com/wp/GRDCsEG.jpg',
                  text: 'Bruce Banner',
                ),
                ),
              );},
              child: const SingleChatWidget(
                  chatTitle: "Bruce Banner",
                  chatMessage: 'Hulk Smash',
                  seenStatusColor: Colors.grey,
                  imageUrl:
                  'https://wallpapercave.com/wp/GRDCsEG.jpg'),

            ),
            InkWell(onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) =>
                const chat(
                  image: 'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/09/maisie-williams-aka-arya-stark-of-game-of-thrones-someone-told-me-in-season-three-that-i-was-going-to-kill-the-night-king001.jpg',
                  text: 'Arya Stark',
                ),
                ),
              );
            },
              child: const SingleChatWidget(
                  chatTitle: "Arya Stark",
                  chatMessage: 'I wish GoT had better ending',
                  seenStatusColor: Colors.blue,
                  imageUrl:
                  'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/09/maisie-williams-aka-arya-stark-of-game-of-thrones-someone-told-me-in-season-three-that-i-was-going-to-kill-the-night-king001.jpg'),
            ),
            InkWell(onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) =>
                const chat(
                  image: 'https://th.bing.com/th/id/OIP.hL3HnPj5ZboGv3xA1res2wHaGI?pid=ImgDet&rs=1',
                  text: 'Peter Parker',
                ),
                ),
              );
            },
              child: const SingleChatWidget(
                  chatTitle: "Peter Parker",
                  chatMessage: "Mr. Stark I don't feel so good",
                  seenStatusColor: Colors.blue,
                  imageUrl:
                  'https://th.bing.com/th/id/OIP.hL3HnPj5ZboGv3xA1res2wHaGI?pid=ImgDet&rs=1'),
            ),
            InkWell(onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) =>
                const chat(
                  image: 'https://th.bing.com/th/id/OIP.jdfND-tXUlWb7fz8BGIW7wHaEo?w=272&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                  text: 'Thanos',
                ),
                ),
              );
            },
              child: const SingleChatWidget(
                  chatTitle: "Thanos",
                  chatMessage: "you should have aimed for the head",
                  seenStatusColor: Colors.blue,
                  imageUrl:
                  'https://th.bing.com/th/id/OIP.jdfND-tXUlWb7fz8BGIW7wHaEo?w=272&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
            ),
          ],
        ),
      ),
      floatingActionButton: FAB(
          onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const addcontact()),);
          },
          Icon: const Icon(Icons.chat, color: Colors.white,)),
    );
  }
}
