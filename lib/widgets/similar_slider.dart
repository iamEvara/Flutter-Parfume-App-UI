import 'package:flutter/material.dart';

class SimilarSlider extends StatelessWidget {
  const SimilarSlider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final similars = [
      {
        "image": "assets/1.png",
      },
      {
        "image": "assets/2.png",
      },
      {
        "image": "assets/3.png",
      },
      {
        "image": "assets/4.png",
      },
      {
        "image": "assets/5.png",
      },
      {
        "image": "assets/6.png",
      },
    ];
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        height: 90,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: similars.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xfff9f9f9),
                borderRadius: BorderRadius.circular(22),
              ),
              height: 90,
              width: 90,
              child: Image.asset(
                similars[index]['image'],
                width: 90,
                height: 90,
              ),
            );
          },
        ),
      ),
    );
  }
}
