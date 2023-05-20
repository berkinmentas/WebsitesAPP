import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'searchBox.dart';
import '../data.dart';

class BodyCard extends StatelessWidget {
  const BodyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          itemCount: cardData.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 0.85),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 2,
              child: Container(
                child: Column(
                  children: [
                    Container(
                        child: Image.asset(cardData[index]['imageUrl'])
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        cardData[index]['title'],
                        style: TextStyle(
                            fontFamily: GoogleFonts.raleway().fontFamily,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}