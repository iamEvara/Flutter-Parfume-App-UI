import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parfume/widgets/categories_slider.dart';
import 'package:parfume/widgets/special_offers_grid.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Color(0xfff9f9f9),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 40),
                  child: Center(
                    child: Text("Select Your Favorite Products",
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont('Montserrat',
                            color: Color(0xff0B0A0A),
                            fontSize: 30,
                            fontWeight: FontWeight.w900)),
                  ),
                ),
                Center(
                  child: Text("Find A wide variety of parfume products",
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont('Roboto',
                          color: Color(0xff66625f),
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                        height: 60,
                        width: MediaQuery.of(context).size.width * 0.50,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              border: InputBorder.none,
                              hintText: "Find your parfume",
                              hintStyle: GoogleFonts.getFont(
                                'Roboto',
                                fontSize: 14,
                                color: Color(0xff66625f),
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xff0B0A0A),
                          ),
                          child: RotationTransition(
                            turns: new AlwaysStoppedAnimation(180 / 360),
                            child: Icon(
                              Ionicons.md_options,
                              color: Colors.white,
                              size: 24,
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Text('Categories',
                      style: GoogleFonts.getFont('Roboto',
                          fontSize: 17,
                          color: Color(0xff0B0A0A),
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 15,
                ),
                CategorieSlider(),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Text('Special Offers',
                          style: GoogleFonts.getFont('Roboto',
                              fontSize: 17,
                              color: Color(0xff0B0A0A),
                              fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Text("View All",
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont('Roboto',
                              color: Color(0xff66625f),
                              fontSize: 14,
                              fontWeight: FontWeight.w300)),
                    ),
                  ],
                ),
                GridOffers(),
              ]),
        ),
        bottomNavigationBar: Container(
          height: 65,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(22), topRight: Radius.circular(22)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // due to an error in the cupertino icons package, with some icon you can't select it, it will show the icon after it, so I am showing the icon before bag_filled to make it work; check here https://github.com/flutter/flutter/issues/73243
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Icon(
                      CupertinoIcons.house,
                      color: Color(0xff171717),
                    ),
                  ),
                  Icon(
                    CupertinoIcons.badge_plus_radiowaves_right,
                    color: Color(0xffDCDDE2),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // due to an error in the cupertino icons package, with some icon you can't select it, it will show the icon after it, so I am showing the icon before bag_filled to make it work; check here https://github.com/flutter/flutter/issues/73243
                children: [
                  Icon(
                    CupertinoIcons.bookmark,
                    color: Color(0xffDCDDE2),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Icon(
                      CupertinoIcons.person,
                      color: Color(0xffDCDDE2),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          elevation: 5,
          backgroundColor: Color(0xff171717),
          onPressed: null,
          child: Icon(Ionicons.ios_qr_scanner),
        ),
      ),
    );
  }
}
