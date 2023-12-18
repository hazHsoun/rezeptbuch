import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class AddRecipeScreen extends StatefulWidget {
  @override
  _AddRecipeScreenState createState() => _AddRecipeScreenState();
}

class _AddRecipeScreenState extends State<AddRecipeScreen> {
  final rezeptController = TextEditingController();
  final anweisungsController = TextEditingController();
  File? image;

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 183, 0, 1),
        title: Text('Create Recipe'),
      ),
      body: buildPage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        selectedItemColor: Color.fromRGBO(0, 0, 0, 1),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        iconSize: 25,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: 'Previous',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: 'Next',
          ),
        ],
      ),
    );
  }

  Widget buildPage() {
    switch (_currentIndex) {
      case 0:
        return buildFirstPage();
      case 1:
        return buildSecondPage();
      // Add cases for other pages as needed
      default:
        return Container(); // Placeholder for unknown pages
    }
  }

  Widget buildFirstPage() {
    return Padding(
      padding: const EdgeInsets.only(top: 13.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Text(
              'Name of the Recipe:',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: TextField(
              controller: rezeptController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'e.g. Spaghetti with Tomato Sauce',
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(height: 10),
                Container(
                  height: 270,
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromRGBO(230, 231, 235, 0.984),
                  ),
                  child: Stack(
                    children: [
                      if (image != null)
                        Positioned.fill(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.file(
                              image!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      Positioned(
                        bottom: 16.0,
                        right: 16.0,
                        child: SpeedDial(
                          backgroundColor: Colors.orange,
                          animatedIcon: AnimatedIcons.menu_close,
                          animatedIconTheme: IconThemeData(size: 22.0),
                          closeManually: false,
                          curve: Curves.bounceIn,
                          visible: image != null,
                          children: [
                            SpeedDialChild(
                              child: Icon(Icons.delete),
                              backgroundColor: Colors.red,
                              onTap: () {
                                setState(() {
                                  image = null;
                                });
                              },
                              label: 'Delete Image',
                              labelStyle: TextStyle(fontSize: 16.0),
                              labelBackgroundColor: Colors.red,
                            ),
                            SpeedDialChild(
                              child: Icon(Icons.edit),
                              backgroundColor: Colors.blue,
                              onTap: () async {
                                final pickedImage = await ImagePicker()
                                    .pickImage(source: ImageSource.gallery);
                                if (pickedImage != null) {
                                  setState(() {
                                    image = File(pickedImage.path);
                                  });
                                }
                              },
                              label: 'Change Image',
                              labelStyle: TextStyle(fontSize: 16.0),
                              labelBackgroundColor: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                      if (image == null)
                        Positioned(
                          bottom: 80.0,
                          left: 100.0,
                          child: ElevatedButton(
                            onPressed: () async {
                              final pickedImage = await ImagePicker()
                                  .pickImage(source: ImageSource.gallery);
                              if (pickedImage != null) {
                                setState(() {
                                  image = File(pickedImage.path);
                                });
                              }
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.orange,
                              ),
                            ),
                            child: const SizedBox(
                              width: 120,
                              height: 40,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.camera_alt,
                                    color: Colors.black,
                                  ),
                                  Text('Pick an image'),
                                ],
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'description:',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextField(
                      controller: anweisungsController,
                      minLines: 3,
                      maxLines: 9,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                        hintText: 'z.B. Spaghetti mit Tomatensauce',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSecondPage() {
    Scaffold(
      appBar: AppBar(
        title: Text('YArak'),
      ),
    );
    return Center(child: Text('ZUTATEN'));
  }
}

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<AddRecipeScreen> {
  int _currentIndex = 1;

  List<Widget> pages = [
    Page2(),
    Page3(),
    Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 183, 0, 1),
        title: Text('Create Recipe'),
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        selectedItemColor: Color.fromRGBO(0, 0, 0, 1),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        iconSize: 25,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: 'Previous',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: 'Next',
          ),
        ],
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Page 2')),
    );
  }
}

class Page3 extends StatefulWidget {
  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Page 3')),
    );
  }
}

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Page 4')),
    );
  }
}
