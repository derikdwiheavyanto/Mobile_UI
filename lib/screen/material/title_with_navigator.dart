import 'package:flutter/material.dart';

import '../course_detail_page.dart';

class TitleWithNavigator extends StatelessWidget {
  const TitleWithNavigator({
    Key? key,
    required this.title,
    required this.page,
  }) : super(key: key);

  final String title;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24, left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 30),
            child: Row(
              children: [
                Text("Popular Course",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Poppins")),
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return CourseDetail();
                    }));
                  },
                  child: Text("show all",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 9.5,
                          fontFamily: "Poppins")),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
