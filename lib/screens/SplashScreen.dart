import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Welcome.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => welcome()));

    }
    );

    return const SafeArea(
        child:
    Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 300,),
            Image(image: AssetImage('lib/Images/WhatsappLogo.png'),
            height: 80,
              width: 80,
            ),

            Column(
              children:[
                SizedBox(height:300,),
                Text('From',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                  ),
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(image: AssetImage('lib/Images/MetaLogo.png'),
                height: 40,
                  width: 40,
                ),
                Text('Meta',
                style: TextStyle(
                  color: Color(0xFF25D366),
                  fontSize: 20,
                  fontWeight: FontWeight.w400
                ),
                )
              ],
            )
                ],
            ),
          ],
        ),
      ),
    ),
    );
  }
}

