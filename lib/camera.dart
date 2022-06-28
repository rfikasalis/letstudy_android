import 'dart:io';
import 'dart:ui';

import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      home: cameraPage(),
    ));

class cameraPage extends StatefulWidget {
  const cameraPage({Key? key}) : super(key: key);
  _cameraPageState createState() => _cameraPageState();
}

class _cameraPageState extends State<cameraPage> {
  File? image;
  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? imagePicked =
        await _picker.pickImage(source: ImageSource.camera);
    image = File(imagePicked!.path);
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 19, 7, 22),
        title: const Text("Submit tugas"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image != null
                ? Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Image.file(
                      image!,
                      fit: BoxFit.cover,
                    ),
                  )
                : Container(),
            TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blueAccent),
                onPressed: () async {
                  await getImage();
                },
                child: Text(
                  'Open Image',
                  style: TextStyle(color: Colors.blueAccent),
                )),
          ],
        ),
      ),
    );
  }
}
