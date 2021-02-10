import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategorieSlider extends StatelessWidget {
  const CategorieSlider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categories = [
      {"name": "Rose", "image": "assets/rose.png", "number": 11},
      {"name": "Blossom", "image": "assets/blossom.png", "number": 14},
      {"name": "Gardenia", "image": "assets/gardenia.png", "number": 5},
    ];
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        height: 90,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 2,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
              ),
              height: 70,
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 4,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Color(0xfff9f9f9),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image.asset(
                      categories[index]['image'],
                      width: 30,
                      height: 30,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        categories[index]['name'],
                        style: GoogleFonts.getFont(
                          'Roboto',
                          color: Color(0xff171717),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        (categories[index]['number']).toString() + ' now',
                        style: GoogleFonts.getFont('Roboto',
                            color: Color(0xff66625f),
                            fontWeight: FontWeight.w300,
                            fontSize: 12),
                      )
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
