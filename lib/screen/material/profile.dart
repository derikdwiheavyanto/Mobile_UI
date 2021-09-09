import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(22, 12, 22, 0),
      width: size.width * 1,
      height: 36,
      // color: Colors.amber,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image(
              image: AssetImage("assets/image11.png"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 6),
            padding: EdgeInsets.symmetric(vertical: 3),
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Shem Bizo\n",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 12),
              ),
              TextSpan(
                text: "Mentor UI Designer",
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: Color(0xFFA2ADB1),
                    fontSize: 8),
              )
            ])),
          ),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ))
        ],
      ),
    );
  }
}
