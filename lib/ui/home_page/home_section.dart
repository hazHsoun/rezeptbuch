import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      //reste Text
      child: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              //der Anfang des ersten Textes
              'Plan today',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
              ),
            ), //das Ende des ersten Textes
            const SizedBox(height: 30), //der Anfang der ersten border
            Container(
              height: 140,
              margin: const EdgeInsets.only(left: 24, right: 24),
              padding: const EdgeInsets.all(0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  width: 1.0,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 100.0,
                      height: 150.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/f1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 100.0,
                      height: 150.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/f2.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //das ende des ersten border
            const Text(
              //der Anfang des zweien Textes
              'Required ingredients',
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
              ),
            ), //das Ende des zweiten Textes
            const SizedBox(height: 10), //der Anfang der zwiten border
            Container(
              height: 140,
              margin: const EdgeInsets.only(left: 24, right: 24),
              padding: const EdgeInsets.all(0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  width: 1.0,
                ), //das Anfang des zwiten border
                color: Color.fromRGBO(255, 235, 184, 1),
              ),
            ),
            const Text(
              //der Anfang des dritten Textes
              'Recommended recipes',
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
              ),
            ), //das ende des dritten Textes
          ],
        ),
      ),
    );
  }
}
