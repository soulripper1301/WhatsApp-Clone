import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/PhoneNo.dart';
class welcome extends StatelessWidget {
   welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 45,),
         Padding(padding: const EdgeInsets.only(left: 340),
          child:PopupMenuButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text('Help')),
              ];
            },
          ),
         ),
          const SizedBox(height: 20,),
          const Image(image: AssetImage('lib/Images/welcome.png')),
          const Text('Welcome to Whatsapp',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
          ),
          const SizedBox(height: 30,),
          RichText(
            textAlign: TextAlign.center,
              text:
               TextSpan(
            children: [
              const TextSpan(
                text: 'Read our ',
                style: TextStyle(
                  color: Colors.grey,
                )
              ),
          TextSpan(
          text: 'Privacy Policy. ',
            style: const TextStyle(
              color: Colors.blue,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {},
          ),
              const TextSpan(
                  text: 'Tap "Agree and Continue" to ',
                  style: TextStyle(
                    color: Colors.grey,
                  )
              ),
              const TextSpan(
                  text: '\naccept the ',
                  style: TextStyle(
                    color: Colors.grey,
                  )
              ),
              TextSpan(
                text: 'Terms of Services.',
                style: const TextStyle(
                  color: Colors.blue,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {},
              ),

        ],
          ),
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: 30,
            width: 127,
            child: OutlinedButton(
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                side: const MaterialStatePropertyAll(BorderSide.none), // Remove the border
                backgroundColor: MaterialStatePropertyAll(Color(0xFFDCDCDC)),
                elevation: const MaterialStatePropertyAll(0.1), // ShadEow depth
              ),
              onPressed: () {},
              child: const Row(
                children: [
                  Image(image: AssetImage('lib/Images/world-wide-web.png'),
                  height: 20,
                    width: 20,
                  ),
                  SizedBox(width: 5,),
                  Text('English',
                  style: TextStyle(
                    color: Color(0xFF128C7E)
                  ),
                  ),
                  Icon(Icons.arrow_drop_down_sharp,
                  color: Color(0xFF128C7E),)
                  // Add your child elements here
                ],
              ),
            ),
          ),

          const SizedBox(height: 180,),
          SizedBox(
            width: 335,
          height: 40,
          child: FloatingActionButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  phoneno()),);
            },
            backgroundColor: const Color(0xFF128C7E),
            child: const Text('Agree and Continue',
            style: TextStyle(

            ),
            ),
          ),
          ),
        ],
      ),

    );
  }
}
