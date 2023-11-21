import 'dart:html';

import 'package:flutter/material.dart';
import 'package:rezeptbuch/ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yumm book',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xffb700), // Use Color constructor
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '.....KA'),
    );
  }
}

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(),
//       bottomNavigationBar: BottomNavigationBar(items: [
//         BottomNavigationBarItem(icon: Icon(Icons.calendar_view_week_rounded))
//       ]),
//     );
//   }
// }
