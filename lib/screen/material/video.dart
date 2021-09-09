import 'package:flutter/material.dart';

class Video extends StatelessWidget {
  const Video({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(33, 86, 33, 0),
      width: 295,
      height: 203,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xFFFFFFFF),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage("assets/image7.png"), fit: BoxFit.cover),
            ),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/btn_play.png"))),
            ),
          )
        ],
      ),
    );
  }
}
