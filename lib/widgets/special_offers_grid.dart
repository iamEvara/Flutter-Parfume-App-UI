import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parfume/screens/details.dart';

class GridOffers extends StatelessWidget {
  const GridOffers({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final offers = [
      {"name": "coco mademoiselle", "image": "assets/1.png", "price": 82},
      {
        "name": "coco mademoiselle l’eau privée",
        "image": "assets/2.png",
        "price": 125
      },
      {
        "name": "coco mademoiselle l’eau privée",
        "image": "assets/3.png",
        "price": 5
      },
      {"name": "n°5", "image": "assets/4.png", "price": 5},
      {"name": "gabrielle chanel essence", "image": "assets/5.png", "price": 5},
      {"name": "chance eau tendre", "image": "assets/6.png", "price": 5},
    ];
    return SizedBox(
      height: offers.length * 100.0,
      child: GridView.count(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        crossAxisCount: 2,
        children: List.generate(offers.length, (index) {
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Details(
                        image: offers[index]['image'],
                        name: offers[index]['name'].toString().toUpperCase(),
                        price: offers[index]['price'],
                      )),
            ),
            child: Column(
              children: [
                Container(
                  child: Image.asset(
                    offers[index]['image'],
                    height: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Text(offers[index]['name'].toString().toUpperCase(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont('Roboto',
                          color: Color(0xff66625f),
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                ),
                Text(
                  '\$' + offers[index]['price'].toString(),
                  style: GoogleFonts.getFont(
                    'Roboto',
                    color: Color(0xff171717),
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
