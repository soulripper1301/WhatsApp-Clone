import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/Add_Call.dart';
import 'package:whatsapp_clone/screens/Add_Contact.dart';
import 'package:whatsapp_clone/widgets/FAB.dart';
import 'package:whatsapp_clone/widgets/single_call_widget.dart';

class CallTab extends StatelessWidget {
  const CallTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Color(0xFF128C7E),
                  radius: 30,
                  child: Icon(Icons.attachment,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 20,),
                RichText(
                  text:
                  const TextSpan(
                    children: [
                      TextSpan(text: 'Create call link',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                          text: '\nShare a link for your Whatsapp call',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          )
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text('Recent',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 10,),
            _buildCallWidget(
              callStatus: 'Outgoing',
              callType: 'Audio',
              chatMessage: 'Today, 12:28 PM',
              chatTitle: 'Tony Stark',
              imageUrl:
              'https://th.bing.com/th/id/OIP.08bGE4YPB9q_OZ9hS45YpgHaGm?w=188&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
            ),
            _buildCallWidget(
              callStatus: 'Incoming',
              callType: 'Video',
              chatMessage: 'Today, 01:11 AM',
              chatTitle: 'Bruce Banner',
              imageUrl:
              'https://wallpapercave.com/wp/GRDCsEG.jpg',
            ),
            _buildCallWidget(
              callStatus: 'Incoming',
              callType: 'Video',
              chatMessage: 'Today, 5:28 AM',
              chatTitle: 'Red Woman',
              imageUrl:
              'https://upload.wikimedia.org/wikipedia/en/8/80/Melisandre-Carice_van_Houten.jpg',
            ),
            _buildCallWidget(
              callStatus: 'Outgoing',
              callType: 'Audio',
              chatMessage: 'Today, 12:28 PM',
              chatTitle: 'Peter Parker',
              imageUrl:
              'https://th.bing.com/th/id/OIP.hL3HnPj5ZboGv3xA1res2wHaGI?pid=ImgDet&rs=1',
            ),
            _buildCallWidget(
              callStatus: 'Outgoing',
              callType: 'Audio',
              chatMessage: 'Today, 12:28 PM',
              chatTitle: 'Tony Stark',
              imageUrl:
              'https://th.bing.com/th/id/OIP.08bGE4YPB9q_OZ9hS45YpgHaGm?w=188&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
            ),
            _buildCallWidget(
              callStatus: 'Incoming',
              callType: 'Video',
              chatMessage: 'Today, 01:11 AM',
              chatTitle: 'Bruce Banner',
              imageUrl:
              'https://wallpapercave.com/wp/GRDCsEG.jpg',
            ),
            _buildCallWidget(
              callStatus: 'Incoming',
              callType: 'Video',
              chatMessage: 'Today, 5:28 AM',
              chatTitle: 'Red Woman',
              imageUrl:
              'https://upload.wikimedia.org/wikipedia/en/8/80/Melisandre-Carice_van_Houten.jpg',
            ),
            _buildCallWidget(
              callStatus: 'Outgoing',
              callType: 'Audio',
              chatMessage: 'Today, 12:28 PM',
              chatTitle: 'Peter Parker',
              imageUrl:
              'https://th.bing.com/th/id/OIP.hL3HnPj5ZboGv3xA1res2wHaGI?pid=ImgDet&rs=1',
            ),_buildCallWidget(
              callStatus: 'Outgoing',
              callType: 'Audio',
              chatMessage: 'Today, 12:28 PM',
              chatTitle: 'Tony Stark',
              imageUrl:
              'https://th.bing.com/th/id/OIP.08bGE4YPB9q_OZ9hS45YpgHaGm?w=188&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
            ),
            _buildCallWidget(
              callStatus: 'Incoming',
              callType: 'Video',
              chatMessage: 'Today, 01:11 AM',
              chatTitle: 'Bruce Banner',
              imageUrl:
              'https://wallpapercave.com/wp/GRDCsEG.jpg',
            ),
            _buildCallWidget(
              callStatus: 'Incoming',
              callType: 'Video',
              chatMessage: 'Today, 5:28 AM',
              chatTitle: 'Red Woman',
              imageUrl:
              'https://upload.wikimedia.org/wikipedia/en/8/80/Melisandre-Carice_van_Houten.jpg',
            ),
            _buildCallWidget(
              callStatus: 'Outgoing',
              callType: 'Audio',
              chatMessage: 'Today, 12:28 PM',
              chatTitle: 'Peter Parker',
              imageUrl:
              'https://th.bing.com/th/id/OIP.hL3HnPj5ZboGv3xA1res2wHaGI?pid=ImgDet&rs=1',
            ),
          ],
        ),
      ),

      floatingActionButton:FAB(
        onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => const addcall()),);
        },
        Icon: const Icon(Icons.add_call, color: Colors.white,),),
    );
  }

  Widget _buildCallWidget({
    required String callStatus,
    required String callType,
    required String chatMessage,
    required String chatTitle,
    required String imageUrl,
  }) {
    return InkWell(
      onTap: () {},
      child: Ink(
        child: SingleCallWidget(
          callStatus: callStatus,
          callType: callType,
          chatMessage: chatMessage,
          chatTitle: chatTitle,
          imageUrl: imageUrl,
        ),
      ),
    );
  }
}
