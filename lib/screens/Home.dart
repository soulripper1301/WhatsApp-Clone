import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'dart:io';

import 'package:whatsapp_clone/Screens/call_screen.dart';
import 'package:whatsapp_clone/Screens/chat_screen.dart';
import 'package:whatsapp_clone/screens/Community.dart';
import 'package:whatsapp_clone/screens/New_Broadcast.dart';
import 'package:whatsapp_clone/screens/New_Group.dart';
import 'package:whatsapp_clone/screens/Settings.dart';
import 'package:whatsapp_clone/screens/status_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                // Open the camera when the camera icon is pressed
                _openCamera(context);
              },
              icon: const Icon(Icons.camera_alt_outlined),
            ),
            IconButton(icon: const Icon(Icons.search), onPressed: () {}),
            PopupMenuButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text('New Group'),
                  onTap: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const newgroup()),);
                  },
                  ),
                  PopupMenuItem(child: Text('New Broadcast'),
                    onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const newbroadcast()),);
                    },
                  ),
                   PopupMenuItem(child: Text('Linked Devices'),),
                  const PopupMenuItem(child: Text('Starred Messages')),
                  const PopupMenuItem(child: Text('Payments')),
                  PopupMenuItem(child: Text('Settings'),
                    onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Settings()),);
                    },
                  ),
                ];
              },
            ),
          ],
          backgroundColor: const Color(0xff128C7E),
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                  iconMargin: EdgeInsets.all(10),
                  child: Image(image: AssetImage('lib/Images/team.png'),
                  height: 30,
                    width: 30,
                  )
                ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Updates'),
              ),
              Tab(
                child: Text('Calls'),
              ),
            ],
            labelColor: Colors.white,
          ),
        ),
        body: const TabBarView(
          children: [
            CommunityTabs(),
            ChatsTab(),
            StatusTab(),
            CallTab(),
          ],
        ),
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
