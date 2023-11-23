import 'package:flutter/material.dart';
class CommunityTabs extends StatelessWidget {
  const CommunityTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          SizedBox(height: 10,),
        Row(
          children: [
            Stack(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFFC5C6D0),
                      width: 1,
                    ),
                    color: Color(0xFFC5C6D0), // Grey background color
                  ),
                  child: const Image(image: AssetImage('lib/Images/team.png'),
                    height: 2,
                    width: 2,
                  )
                ),
                const Padding(padding: EdgeInsets.only(left: 30,top: 30),
                    child:
                CircleAvatar(
                  radius: 9,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: Color(0xFF008069),
                    child: Icon(Icons.add,
                    size: 17,
                    color: Colors.white,),
                  ),
                ),
    ),
              ],
            ),
            SizedBox(width: 10,),
            const Text('New Community',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 16
            ),
            )

          ],
        ),

        ],
      ),
      ),
    );
  }
}
