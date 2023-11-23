import 'package:flutter/material.dart';

class RecipeSection extends StatefulWidget {
  @override
  State<RecipeSection> createState() => _RecipeSectionState();
}

class _RecipeSectionState extends State<RecipeSection> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Center(
      child: Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                // Navigate to the add recipe screen when InkWell is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddRecipeScreen(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 106, 0, 1),
                  borderRadius: BorderRadius.circular(60),
                ),
                width: width * 0.8,
                height: height * 0.09,
                child: const Center(
                  // Add a Text widget as a child of the Container
                  child: Text(
                    'Add new Recipe',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.5,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AddRecipeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final rezeptController = TextEditingController();
    print(rezeptController.text);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 183, 0, 1),
        title: Text('Create Recipe'),
      ),
      body: Padding(
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
                onChanged: (value) {
                  print(value);
                  rezeptController.text = value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'e.g. Spaghetti with Tomato Sauce',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
