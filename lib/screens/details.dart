import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parfume/widgets/similar_slider.dart';

class Details extends StatelessWidget {
  final image;
  final name;
  final price;

  const Details({Key key, this.image, this.name, this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xffE7DED7),
                )),
            Container(
              height: 300,
              decoration: BoxDecoration(
                  color: Color(0xffE7DED7),
                  image: DecorationImage(image: AssetImage(image), scale: 1.8)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 28.0),
                        child: Icon(
                          CupertinoIcons.back,
                          color: Color(0xff171717),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 28.0),
                        child: Icon(
                          CupertinoIcons.badge_plus_radiowaves_right,
                          color: Color(0xff171717),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 30,
              decoration: BoxDecoration(
                color: Color(0xffE7DED7),
              ),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(42),
                      topRight: Radius.circular(42)),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Text("Chanel",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont('Lexend Mega',
                      color: Color(0xffBCBCBE),
                      fontSize: 17,
                      fontWeight: FontWeight.w600)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 10),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.70,
                    child: Text(
                      name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.getFont(
                        'Roboto',
                        color: Color(0xff171717),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0, top: 10),
                  child: Text(
                    '\$' + price.toString(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.getFont(
                      'Roboto',
                      color: Color(0xff171717),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                    "N°5 was the world’s first abstract fragrance. The Eau de Parfum draws inspiration from the Parfum with which it shares its floral aldehyde signature.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont('Roboto',
                        color: Color(0xffBCBCBE),
                        fontSize: 15,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text('Similar This',
                  style: GoogleFonts.getFont(
                    'Roboto',
                    fontSize: 18,
                    color: Color(0xff0B0A0A),
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            SimilarSlider(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.white,
        ),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 3,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  border: Border.all(
                    color: Color(0xffC4C4C5),
                    width: 2,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22)),
              child: Icon(
                AntDesign.hearto,
                size: 28,
                color: Color(0xffC4C4C5),
              ),
            ),
            Container(
              height: 70,
              margin: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width - 140,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Color(0xff0B0A0A),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text("+ Add To Cart",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont('Roboto',
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
