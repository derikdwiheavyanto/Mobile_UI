import 'package:flutter/material.dart';

class TitleView extends StatelessWidget {
  const TitleView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(22, 18, 120, 0),
      child: Text(
        "UI Design: Wireframe to Visual Design",
        style: TextStyle(
            fontFamily: "Poppins", fontWeight: FontWeight.w600, fontSize: 14),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
