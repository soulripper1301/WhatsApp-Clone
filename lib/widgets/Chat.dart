import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/Video_Call.dart';
import 'package:whatsapp_clone/screens/Voice_Call.dart';
class chat extends StatelessWidget {
  final image;
  final text;
  const chat({super.key,
  required this.image,
  required this.text,
  });

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
              // Top section with back button and title
               SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 2),
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage(image),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    text,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Expanded( // Use Expanded widget to push the child Row to the right
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end, // Align to the right
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => videocall(contact: text,)),);
                          },
                          icon: const Icon(Icons.videocam_sharp, color: Colors.white),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Voicecall(dp: image, name: text,)),
                            );
                          },
                          icon: const Icon(Icons.call, color: Colors.white),
                        ),
                        PopupMenuButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          itemBuilder: (context) {
                            return [
                              const PopupMenuItem(child: Text('View Contact')),
                              const PopupMenuItem(child: Text('Media, Links, and Docs')),
                              const PopupMenuItem(child: Text('Search')),
                              const PopupMenuItem(child: Text('Mute Notification')),
                              const PopupMenuItem(child: Text('Disappearing Messages')),
                              const PopupMenuItem(child: Text('Wallpaper')),
                              PopupMenuItem(
                                child: const Row(
                                  children: [
                                    Text('More'),
                                    Icon(Icons.arrow_right, color: Colors.black),
                                  ],
                                ),
                                onTap: () {},
                              ),
                            ];
                          },
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6,),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child:
                  Column(
                    children: [
                      const SizedBox(height: 20,),
                      Padding(
                        padding: const
                        EdgeInsets.only(left: 280,),
                        child: Material(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFE7FFDB),
                            ),
                            alignment: Alignment.topLeft,
                            height: 40,
                            width: 100,
                            child: const Padding(padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Hello!',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,

                                    children: [
                                      Text('9:42 AM',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 6,),
                      Padding(
                        padding: const
                        EdgeInsets.only(right: 160,),
                        child: Material(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            alignment: Alignment.topLeft,
                            height: 55,
                            width: 220,
                            child: const Padding(padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Hi there! \nHow can I help you today?',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,

                                    children: [
                                      Text('9:48 AM',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 6,),
                      Padding(
                        padding: const
                        EdgeInsets.only(left: 160,),
                        child: Material(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFE7FFDB),
                            ),
                            alignment: Alignment.topLeft,
                            height: 55,
                            width: 220,
                            child: const Padding(padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("What's the weather like in \nNew York City?",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,

                                    children: [
                                      Text('9:50 AM',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 6,),
                      Padding(
                        padding: const
                        EdgeInsets.only(right: 160,),
                        child: Material(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            alignment: Alignment.topLeft,
                            height: 55,
                            width: 220,
                            child: const Padding(padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Let me check that for you. \nPlease wait a moment.',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,

                                    children: [
                                      Text('9:51 AM',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 6,),
                      Padding(
                        padding: const
                        EdgeInsets.only(right: 80,),
                        child: Material(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            alignment: Alignment.topLeft,
                            height: 55,
                            width: 300,
                            child: const Padding(padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('The current weather in New York City is 75°F \nwith clear skies.',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,

                                    children: [
                                      Text('9:52 AM',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 6,),
                      Padding(
                        padding: const
                        EdgeInsets.only(left: 160,),
                        child: Material(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFE7FFDB),
                            ),
                            alignment: Alignment.topLeft,
                            height: 55,
                            width: 220,
                            child: const Padding(padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('That sounds nice! \nIs it going to rain tomorrow?',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,

                                    children: [
                                      Text('9:54 AM',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 6,),
                      Padding(
                        padding: const
                        EdgeInsets.only(right: 160,),
                        child: Material(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            alignment: Alignment.topLeft,
                            height: 55,
                            width: 220,
                            child: const Padding(padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("I'll check the forecast for you. \nJust a moment.",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,

                                    children: [
                                      Text('9:56 AM',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 6,),
                      Padding(
                        padding: const
                        EdgeInsets.only(right: 115,),
                        child: Material(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            alignment: Alignment.topLeft,
                            height: 55,
                            width: 265,
                            child: const Padding(padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("Tomorrow's forecast for New York City \npredicts a 20% chance of rain.",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,

                                    children: [
                                      Text('9:58 AM',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 6,),
                      Padding(
                        padding: const
                        EdgeInsets.only(left: 160,),
                        child: Material(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFE7FFDB),
                            ),
                            alignment: Alignment.topLeft,
                            height: 55,
                            width: 220,
                            child: const Padding(padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Thanks for the info! \nWhat about the weekend?',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,

                                    children: [
                                      Text('10:00 AM',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 6,),
                      Padding(
                        padding: const
                        EdgeInsets.only(right: 115,),
                        child: Material(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            alignment: Alignment.topLeft,
                            height: 55,
                            width: 265,
                            child: const Padding(padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("It looks like the weekend will be sunny\nwith temperatures around 80°F.",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,

                                    children: [
                                      Text('10:01 AM',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 6,),
                      Padding(
                        padding: const
                        EdgeInsets.only(left: 160,),
                        child: Material(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFE7FFDB),
                            ),
                            alignment: Alignment.topLeft,
                            height: 55,
                            width: 220,
                            child: const Padding(padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Perfect! \nAnything else I should know?',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,

                                    children: [
                                      Text('10:00 AM',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 6,),
                      Padding(
                        padding: const
                        EdgeInsets.only(right: 65,),
                        child: Material(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            alignment: Alignment.topLeft,
                            height: 55,
                            width: 315,
                            child: const Padding(padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("Not at the moment. \nFeel free to ask if you have any more questions!",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,

                                    children: [
                                      Text('10:01 AM',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 6,),
                      Padding(
                        padding: const
                        EdgeInsets.only(left: 200,),
                        child: Material(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFE7FFDB),
                            ),
                            alignment: Alignment.topLeft,
                            height: 55,
                            width: 180,
                            child: const Padding(padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Alright, \nthanks for your help.',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,

                                    children: [
                                      Text('10:00 AM',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 6,),
                      Padding(
                        padding: const
                        EdgeInsets.only(right: 220,),
                        child: Material(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            alignment: Alignment.topLeft,
                            height: 55,
                            width: 160,
                            child: const Padding(padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("You're welcome! \nHave a great day!",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,

                                    children: [
                                      Text('10:01 AM',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.emoji_emotions,
                                color: Color(0xFFc0c0c0),
                              ),
                              onPressed: () {
                                // Handle emoji button tap
                              },
                            ),
                            const Expanded(
                              child: TextField(
                                decoration: InputDecoration.collapsed(
                                  hintText: 'Message',
                                ),
                              ),
                            ),
                            GestureDetector(
                              child: const Image(image: AssetImage(
                                  'lib/Images/attachmenticon.png'),
                                height: 22,
                                width: 22,
                              ),
                            ),
                            const SizedBox(width: 15,),
                            GestureDetector(
                              child: const Image(
                                image: AssetImage('lib/Images/rupee.png'),
                                height: 22,
                                width: 22,
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.camera_alt,
                                color: Color(0xFFc0c0c0),
                              ),
                              onPressed: () {
                                // Handle camera button tap
                                _openCamera(context);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: const Color(0xFF128C7E),
                      child: IconButton(
                        icon: const Icon(Icons.mic, color: Colors.white),
                        onPressed: () {
                          // Handle send button tap
                        },
                      ),
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
  // Function to open the camera
  Future<void> _openCamera(BuildContext context) async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CameraScreen(camera: firstCamera),
      ),
    );
  }
}

class CameraScreen extends StatefulWidget {
  final CameraDescription camera;

  const CameraScreen({Key? key, required this.camera}) : super(key: key);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );

    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the Future is complete, display the preview.
            return _buildCameraPreview();
          } else {
            // Otherwise, display a loading indicator.
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Take a picture when the camera button is pressed.
          _takePicture(context);
        },
        child: Icon(Icons.camera),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildCameraPreview() {
    return AspectRatio(
      aspectRatio: _controller.value.aspectRatio,
      child: CameraPreview(_controller),
    );
  }

  Future<void> _takePicture(BuildContext context) async {
    try {
      // Ensure the controller is initialized
      await _initializeControllerFuture;

      // Take the picture and save it to the gallery
      final XFile picture = await _controller.takePicture();

      // You can now use the picture file as needed, for example, display it in a new screen
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DisplayPictureScreen(imagePath: picture.path),
        ),
      );
    } catch (e) {
      print('Error taking picture: $e');
    }
  }
}

class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({Key? key, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Display Picture')),
      body: Image.file(File(imagePath)),
    );
  }
}

