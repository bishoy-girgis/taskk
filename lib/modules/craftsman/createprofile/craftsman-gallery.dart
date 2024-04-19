import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sanai3ey/shared/components/loading.dart';
import 'package:sanai3ey/shared/constants/constants.dart';
import '../../../shared/components/crafsman-footer.dart';
import '../../../shared/components/defaultButtom.dart';

class CraftsmanGallery extends StatefulWidget {
  const CraftsmanGallery({Key? key}) : super(key: key);

  @override
  State<CraftsmanGallery> createState() => _CraftsmanGallery();
}

class _CraftsmanGallery extends State<CraftsmanGallery> {

  final ImagePicker imagePicker = ImagePicker();

  List<XFile>? imageFileList = [];

  void selectImages() async {
    final List<XFile>? selectedImages = await imagePicker.pickMultiImage();
    if (selectedImages!.isNotEmpty) {
      imageFileList!.addAll(selectedImages);
    }
    setState(() {
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              const Image(
                image: AssetImage('images/register.jpg'),
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120.0),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(100.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Column(
                      children: [
                        const Text(
                          'Complete Profile',
                          style: TextStyle(
                              color: secondaryColor,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'Tell us more about you',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                  1,
                                      (index) => const BuildDot1(Dotcolor: Colors.green, Ispage: true, text: '1')
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                  3,
                                      (index) => const BuildDot(Dotcolor: Colors.green)
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                1,
                                    (index) =>const BuildDot1(Dotcolor: Colors.green, Ispage: true, text: '2'),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                3,
                                    (index) =>const BuildDot(Dotcolor: Colors.green),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                1,
                                    (index) => const BuildDot1(Dotcolor: Colors.green, Ispage: true, text: '3'),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                3,
                                    (index) =>const BuildDot(Dotcolor: Colors.grey),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                1,
                                    (index) => const BuildDot1(Dotcolor: Colors.grey, Ispage: false, text: '4'),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child:Column(
                                children: [
                                  const Text(
                                    'Add Your Work Photo',
                                    style: TextStyle(
                                        color: secondaryColor,
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 40.0,
                                  ),
                                  Column(
                                    children: [
                                      DefaultButtom(
                                          onPressed: () {
                                            selectImages();
                                          },
                                        width: 250,
                                        height: 40,
                                        text: "Upload Images",
                                      ),
                                      const SizedBox(height: 5,),
                                     SizedBox(
                                       height: 200,
                                       child: Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: GridView.builder(
                                             itemCount: imageFileList!.length,
                                             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                 crossAxisCount: 3
                                             ),
                                             itemBuilder: (BuildContext context, int index) {
                                               return Image.file(File(imageFileList![index].path), fit: BoxFit.cover);
                                             }
                                         ),
                                       ),
                                     )
                                    ],
                                  ),
                                ],
                              ),
                        ),
                        const SizedBox(
                          height: 80.0,
                        ),

                        DefaultButtom(onPressed: () {
                          Navigator.push(context,MaterialPageRoute(
                            builder: (_) =>  CrafsFooter(),
                          ),
                          );
                        },
                            text: 'Submit'),
                        const SizedBox(
                          height: 80.0,
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}