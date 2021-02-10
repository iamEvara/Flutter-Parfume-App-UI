import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parfume/screens/home.dart';

class Start extends StatelessWidget {
  final index;

  const Start({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text("Your Fragrance Message",
                maxLines: 2,
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont('Montserrat',
                    color: Color(0xff0B0A0A),
                    fontSize: 35,
                    fontWeight: FontWeight.w900)),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text("Formulated according to your wishes",
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
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.25),
            child: Image.asset(
              'assets/2.png',
              width: MediaQuery.of(context).size.width * 0.80,
              height: 300,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 5),
                width: 20,
                height: 5,
                decoration: BoxDecoration(
                  color: Color(0xff0B0A0A),
                  borderRadius: BorderRadius.circular(150),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                  color: Color(0xffc4bdb6),
                  borderRadius: BorderRadius.circular(150),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                  color: Color(0xffc4bdb6),
                  borderRadius: BorderRadius.circular(150),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home())),
            child: Container(
              padding: EdgeInsets.all(25),
              margin: EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 9,
                      offset: Offset(0, 6), // changes position of shadow
                    ),
                  ],
                  color: Color(0xff0B0A0A),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text("Login",
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont('Roboto',
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.w500)),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Don't Have account?",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont('Roboto',
                      color: Color(0xff66625f),
                      fontSize: 15,
                      fontWeight: FontWeight.w400)),
              SizedBox(
                width: 5,
              ),
              Text("Sign UP",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont('Roboto',
                      color: Color(0xff0B0A0A),
                      fontSize: 15,
                      fontWeight: FontWeight.w400)),
            ],
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
