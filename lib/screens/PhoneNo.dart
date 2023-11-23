import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Home.dart';
import 'package:whatsapp_clone/screens/OTP.dart';
import 'package:whatsapp_clone/screens/fingerprint.dart';
class phoneno extends StatelessWidget {
 phoneno ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:
        Column(
        children: [
          const SizedBox(height: 35,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              const SizedBox(width: 90,),
              const Text('Enter your phone number',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
              ),
          Padding(padding: const EdgeInsets.only(left: 35),
            child:OutlinedButton(
              style: const ButtonStyle(
                side: MaterialStatePropertyAll(BorderSide.none),
              ),
              onPressed: () {
                showMenu(
                  context: context,
                  position: const RelativeRect.fromLTRB(10, 90, 0, 0), // Adjust the position as per your requirement
                  items: [
                    const PopupMenuItem(
                      value: 1,
                      child: Text('Link as Companion Device',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 1,
                      child: Text('Help',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),

                    // Add more PopupMenuItems as needed
                  ],
                );
              },
              child:
              const Image(image: AssetImage('lib/Images/popup dots.png'),
                height: 20,
                width: 20,
              ),
            ),
          ),
    ],
          ),
          const SizedBox(height: 15,),
          RichText(
            textAlign: TextAlign.center,
            text:
            TextSpan(
              children: [
                const TextSpan(
                    text: 'Whatsapp will need to verify your account. ',
                    style: TextStyle(
                      color: Colors.black,
                    )
                ),
                TextSpan(
                  text: "What's my \nNumber? ",
                  style: const TextStyle(
                    color: Color(0xFF128C7E),
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          GestureDetector(
            child: Container(
              height: 25,
              width: 250,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xFF128C7E), // Specify the color you want
                    width: 1.0, // Specify the width of the bottom border
                  ),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 110,),
                  Text('India',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  ),
                  SizedBox(width: 80,),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Color(0xFF128C7E),
                  ),
                ],
              ),
            )

          ),
          const SizedBox(height: 10,),
          const Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 200),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 70),
                  child: TextField(
                    maxLength: 2,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: '+91',
                      counterText: "", // Remove character counter
                      prefixText: "+", // Add a "+" sign at the start
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF128C7E)), // Change the underline color
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF128C7E)) // Change the underline color
                      ),
                    ),
                  ),
                ),
              ),


              Padding(
                padding: EdgeInsets.only(right: 2, left: 80),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 70),
                  child: TextField(
                    maxLength: 10,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'phone number',
                      counterText: "", // Remove character counter
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF128C7E)), // Change the underline color
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF128C7E)), // Change the underline color
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 0), // Adjust vertical padding
                    ),
                  ),
                ),
              ),

            ],
          ),
          const SizedBox(height: 20,),
        const Text('Carrier changes may apply',
        style: TextStyle(
          color: Colors.grey,

        ),
        ),

        const SizedBox(height: 500,),
          SizedBox(
            width: 80,
            height: 40,
            child: FloatingActionButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              onPressed: () { Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  otp()),); },
              backgroundColor: const Color(0xFF128C7E),

              child: const Text('Next',
                style: TextStyle(

                ),
              ),
            ),
          ),
        ],
      ),
      ),
    );
  }
}
