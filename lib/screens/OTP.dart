import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/fingerprint.dart';
class otp extends StatelessWidget {
  otp ({super.key});

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
                const Text('Verifying your number',
                  style: TextStyle(
                    color: Color(0xFF128C7E),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                Padding(padding: const EdgeInsets.only(left: 50),
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
              ],
            ),
            const SizedBox(height: 15,),
            RichText(
              textAlign: TextAlign.center,
              text:
              TextSpan(
                children: [
                  const TextSpan(
                      text: 'Waiting to automatically detect an SMS sent to',
                      style: TextStyle(
                        color: Colors.black,
                      )
                  ),
                  const TextSpan(
                    text: "\n +91 9897969594.  ",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "Wrong Number? ",
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 120),
              child: TextField(
                textAlign: TextAlign.center,
                maxLength: 6,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: '— — —  — — —',
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
            const SizedBox(height: 20,),
            const Text('Enter 6-digit code',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  const fingerprint()),);
                },
                child: const Text(
                  "Didn't receive code?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF128C7E),
                    fontSize: 16,
                  ),
                ),),
          ],
        ),
      ),
    );
  }
}
