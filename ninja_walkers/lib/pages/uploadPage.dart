import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  // final storageRef = FirebaseStorage.instance.ref();
  // var usrid = FirebaseAuth.instance.currentUser?.uid.toString();
  // final CollectionReference userColl =
  //     FirebaseFirestore.instance.collection("users");

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
        child: const Text("OK"),
        onPressed: () =>
            Navigator.of(context, rootNavigator: true).pop('dialog'));

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Empty Fields"),
      content: const Text("Please fill in all the details"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  File? image;

  Future pickImageGallery() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future pickImageCamera() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future uploadItem() async {
    var picId = DateTime.now().toString();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff6f1e4),
      body: ListView(
        children: [
          SizedBox(
            height: h * 0.03,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: pickImageCamera,
                child: Container(
                  width: w * 0.7,
                  height: h * 0.4,
                  child: image != null
                      ? Container(child: Image.file(image!))
                      : Container(
                          child: Image.asset("assets/images/camera icon.png")),
                ),
              )
            ],
          ),
          SizedBox(
            height: h * 0.03,
          ),
          Container(
            height: h * 0.08,
            margin: const EdgeInsets.only(left: 70, right: 70),
            width: w * 0.95,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset: Offset(1, 1),
                      color: Colors.grey.withOpacity(0.2))
                ]),
            child: TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.focused)) return Colors.red;
                  return null; // Defer to the widget's default.
                }),
              ),
              onPressed: () {},
              child: Text(
                'Before Delivery',
                style: const TextStyle(
                    letterSpacing: 0.1,
                    wordSpacing: 1.5,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: h * 0.015,
          ),
          Container(
            height: h * 0.08,
            margin: const EdgeInsets.only(left: 70, right: 70),
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset: Offset(1, 1),
                      color: Colors.grey.withOpacity(0.2))
                ]),
            child: TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.focused)) return Colors.red;
                  return null; // Defer to the widget's default.
                }),
              ),
              onPressed: () {},
              child: Text(
                'After Delivery',
                style: const TextStyle(
                    letterSpacing: 0.1,
                    wordSpacing: 1.5,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: h * 0.015,
          ),
          SizedBox(
            height: h * 0.015,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      print(null);
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                        padding: MaterialStateProperty.all(EdgeInsets.all(13))),
                    child: Text(
                      "Upload",
                      style:
                          TextStyle(fontSize: 20, fontStyle: FontStyle.normal),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
