import 'package:flutter/material.dart';
import 'package:rezeptbuch/ui/home_page/recipeSection.dart/add_recipe.dart';

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
