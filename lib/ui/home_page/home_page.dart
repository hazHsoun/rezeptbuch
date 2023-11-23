import 'package:flutter/material.dart';
import 'package:rezeptbuch/ui/home_page/home_section.dart';
import 'package:rezeptbuch/ui/home_page/profile_section.dart';
import 'package:rezeptbuch/ui/home_page/recipe_section.dart';
import 'package:rezeptbuch/ui/home_page/shopping_section.dart';
import 'package:rezeptbuch/ui/home_page/weekly_plan_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromRGBO(255, 219, 128, 1), //Hintergrund Farbe
      appBar: AppBar(
        //hier Fängt die AppBar an
        toolbarHeight: 100,
        backgroundColor: const Color.fromARGB(255, 255, 183, 0), //Appbar Farbe
        leading: IconButton(
          //app Logo
          color: Colors.black,
          padding: const EdgeInsets.only(left: 15),
          icon: const Icon(Icons.book_outlined, size: 75.0),
          tooltip: 'book',
          onPressed: () {},
        ), //app logo ende

        actions: <Widget>[
          //settings Icon
          IconButton(
            color: Colors.black,
            padding: EdgeInsets.only(right: 25),
            icon: const Icon(Icons.settings_outlined, size: 50.0),
            tooltip: 'settings',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('')),
              );
            },
          ), //settings Icon ende
        ],
      ), //hier endet die AppBar
      body: switch (_currentIndex) {
        0 => WeeklyPlanSection(),
        1 => ShoppingSection(),
        2 => HomeSection(),
        3 => RecipeSection(),
        4 => ProfileSection(),
        _ => HomeSection()
      },
      //hier fängt die Bottom Navigation Bar an
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        selectedItemColor: Color.fromRGBO(255, 106, 0, 1),
        iconSize: 25,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_rounded),
            label: 'Weekly Plan',
            backgroundColor: Color.fromARGB(255, 255, 183, 0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Shopping',
            backgroundColor: Color.fromARGB(255, 255, 183, 0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 255, 183, 0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            label: 'Recipes',
            backgroundColor: Color.fromARGB(255, 255, 183, 0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Color.fromARGB(255, 255, 183, 0),
          ), // hier endet die Bottom Navigation Bar
        ],
      ), // hier endet die Bottom Navigation Bar
    );
  }
}
