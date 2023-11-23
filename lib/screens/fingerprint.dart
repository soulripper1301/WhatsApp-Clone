import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Home.dart';
class fingerprint extends StatelessWidget {
  const fingerprint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: (){Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  const MyHomePage()),);
        },
      child:  const Center(child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          SizedBox(height: 80,),
          Icon(Icons.lock,
          color: Color(0xFF128C7E),
            size: 35,
          ),
          SizedBox(height: 20,),
          Text('WhatsApp Locked',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
          ),
          SizedBox(height: 200,),
          Icon(Icons.fingerprint,
          color: Colors.grey,
          size: 60,),
          SizedBox(height: 20,),
          Text('Touch the fingerprint sensor',
          style: TextStyle(
            color: Colors.grey,
          ),
          ),
          SizedBox(height: 390,),

        ],
      ),
      ),
        ),
    );
  }
}
