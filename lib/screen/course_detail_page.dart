import 'package:flutter/material.dart';

import 'package:slicer_ui/screen/material/profile.dart';
import 'package:slicer_ui/screen/material/slide_menu.dart';
import 'package:slicer_ui/screen/material/title.dart';
import 'package:slicer_ui/screen/material/video.dart';

class CourseDetail extends StatefulWidget {
  const CourseDetail({Key? key}) : super(key: key);

  @override
  _CourseDetailState createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color(0xFFFAFAFA),
            body: Stack(
              children: [
                // Content
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 1,
                  child: ListView(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Video
                          Video(),

                          //Title
                          TitleView(),

                          // Profile
                          Profile(size: size),

                          // Slide Menu & Course List
                          SlideMenu(),
                        ],
                      ),
                    ],
                  ),
                ),

                // Header
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  color: Color(0xFFFAFAFA),
                  margin: EdgeInsets.fromLTRB(15, 30, 15, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Image(
                            image: AssetImage("assets/btn_back.png"),
                          )),
                      Text(
                        "Course Details",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: "Poppins",
                            fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Image(
                            image: AssetImage(
                              "assets/wishlist.png",
                            ),
                            fit: BoxFit.cover,
                            color: Colors.black,
                          )),
                    ],
                  ),
                ),

                // Bottom
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: size.width,
                    height: 72,
                    color: Colors.white,
                    padding: EdgeInsets.only(left: 22),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "Price\n",
                          style: TextStyle(
                              color: Color(0xFFA2ADB1),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Poppins",
                              fontSize: 12),
                        ),
                        TextSpan(
                          text: "Free",
                          style: TextStyle(
                              color: Color(0xFF22B07D),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Poppins",
                              fontSize: 18),
                        )
                      ])),
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: size.width * 0.6,
                    height: 72,
                    decoration: BoxDecoration(
                        color: Color(0xFF006EEE),
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(20))),
                    padding: EdgeInsets.only(left: 22),
                    child: Center(
                        child: Text("Start Course",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Poppins",
                                fontSize: 12))),
                  ),
                )
              ],
            )));
  }
}
