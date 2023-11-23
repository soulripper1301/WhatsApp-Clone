import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/FAB.dart';
import 'package:whatsapp_clone/widgets/single_status_widget.dart';
class StatusTab extends StatelessWidget {
  const StatusTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children:[
              const Text('Status',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              ),
                  const SizedBox(width: 259,),
                  PopupMenuButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    itemBuilder: (context) {
                      return [
                        const PopupMenuItem(child: Text('Status privacy')),
                      ];
                    },
                  ),
          ],
        ),
              Row(
                children: [
                  const Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xff128C7E),
                        foregroundColor: Color(0xff128C7E),

                        radius: 28,
                        backgroundImage: NetworkImage(
                            'https://th.bing.com/th/id/OIP.nkBbIemZA9epEhhiG_uezwHaFc?w=204&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
                      ),
                      Positioned(
                        top: 35,
                        left: 35,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 11,
                          child: CircleAvatar(
                            backgroundColor: Color(0xFF128C7E),
                            radius: 10,
                            child: Icon(
                              Icons.add, size: 20, color: Colors.white,),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: InkWell(onTap: () {},
                      child: const ListTile(
                        title: Text('My Status'),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top: 2.0),
                          child: Text('Tap to add status update'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              const Text('Recent Updates',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10,),
              InkWell(onTap: () {},
                child: const SingleStatusItem(
                  statusTitle: 'Parzival',
                  statusTime: '56 minutes ago',
                  statusImage: 'https://th.bing.com/th/id/OIP.441k_CpkLCqd02F5d3fsNAHaE8?w=208&h=139&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                ),
              ),
              InkWell(onTap: () {},
                child: const SingleStatusItem(
                  statusTitle: 'Batman',
                  statusTime: '2 minutes ago',
                  statusImage: 'https://th.bing.com/th/id/OIP.VGj0rWESFusFdddqlRrckQHaJl?w=144&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                ),
              ),
              InkWell(onTap: () {},
                child: const SingleStatusItem(
                  statusTitle: 'Plastic Man',
                  statusTime: '12 minutes ago',
                  statusImage: 'https://th.bing.com/th/id/OIP.xZVffarQ04VVH0E_wSu3pgHaKu?w=207&h=300&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                ),
              ),
              Theme(
                data: ThemeData().copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  textColor: Colors.black,
                  tilePadding: const EdgeInsets.all(0.0),
                  title: const Text('Viewed updates',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      )),
                  children: [

                    Row(
                      children: [
                        const Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 30,
                              child: CircleAvatar(
                                radius: 28,
                                backgroundImage:
                                NetworkImage(
                                    'https://th.bing.com/th/id/OIP.6qpq3dTdfmUkyQCVI2kpOwHaJk?w=156&h=201&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: InkWell(onTap: () {},
                            child: const ListTile(
                              title: Text('Issac Newton'),
                              subtitle: Padding(
                                padding: EdgeInsets.only(top: 2.0),
                                child: Text('Just Now'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 30,
                              child: CircleAvatar(
                                radius: 28,
                                backgroundImage:
                                NetworkImage(
                                    'https://th.bing.com/th/id/OIP.ieTHMsmGSbig7hdAYhcKXgHaHa?w=188&h=188&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: InkWell(onTap: () {},
                            child: const ListTile(
                              title: Text('Picasso'),
                              subtitle: Padding(
                                padding: EdgeInsets.only(top: 2.0),
                                child: Text('1:40 AM'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 30,
                              child: CircleAvatar(
                                  radius: 28,
                                  backgroundImage:
                                  NetworkImage(
                                      'https://th.bing.com/th/id/OIP.jEu7b_9QSV13R12AbiVq4gHaJN?w=169&h=210&c=7&r=0&o=5&dpr=1.3&pid=1.7')
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: InkWell(onTap: () {},
                            child: const ListTile(
                              title: Text('Van Gogh'),
                              subtitle: Padding(
                                padding: EdgeInsets.only(top: 2.0),
                                child: Text('8:20 PM'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Theme(
                data: ThemeData().copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  textColor: Colors.black,
                  tilePadding: const EdgeInsets.all(0.0),
                  title: const Text('Muted updates',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      )),
                  children: [
                    InkWell(onTap: () {},
                      child: const SingleStatusItem(
                        statusTitle: 'Stephen Hawking',
                        statusTime: '56 minutes ago',
                        statusImage: 'https://th.bing.com/th/id/OIP.3AbhDBJeG5gpXQEX0HL4VQHaE2?w=256&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                      ),
                    ),
                    InkWell(onTap: () {},
                      child: const SingleStatusItem(
                        statusTitle: 'Albert Einstein',
                        statusTime: '2 minutes ago',
                        statusImage: 'https://th.bing.com/th/id/OIP.5bT_BZIXVamNd3-JsE3C_AHaJY?w=161&h=204&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                      ),
                    ),
                    InkWell(onTap: () {},
                      child: const SingleStatusItem(
                        statusTitle: 'Nikola Tesla',
                        statusTime: '12 minutes ago',
                        statusImage: 'https://th.bing.com/th/id/OIP.9CsnSE0VGqrMzi8E66HnmAHaHa?w=179&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 40,
            width: 40,
            child: FloatingActionButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              backgroundColor: const Color(0xFFd1f0e8),
              child: const Image(image: AssetImage('lib/Images/pencil.png'),
                height: 20,
                width: 20,
              ),
            ),
          ),
          const SizedBox(height: 20,),
          FAB(
            onPressed: () {
              _openCamera(context);
            },
            Icon: const Icon(
              Icons.camera_alt_rounded,
              color: Colors.white,),
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
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Take a picture when the camera button is pressed.
          _takePicture(context);
        },
        child: const Icon(Icons.camera),
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
      appBar: AppBar(title: const Text('Display Picture')),
      body: Image.file(File(imagePath)),
    );
  }
}
