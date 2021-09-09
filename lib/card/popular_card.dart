// Popular Card
import 'package:flutter/material.dart';
import 'package:slicer_ui/screen/course_detail_page.dart';

class PopularCard extends StatefulWidget {
  const PopularCard({Key? key}) : super(key: key);

  @override
  _PopularCardState createState() => _PopularCardState();
}

class _PopularCardState extends State<PopularCard> {
  List prop = [];

  _PopularCardState() {
    prop.add({
      "price": "Free",
      "title": "UI Design: Wireframe to Visual Design",
      "image": "image7.png",
      "rate": 4016
    });
    prop.add({
      "price": "Free",
      "title": "UI Design: Styleguide with Figma",
      "image": "image8.png",
      "rate": 1016
    });
  }

  @override
  Widget build(BuildContext context) {
    return buildCard(context);
  }

  Container buildCard(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 12,
      ),
      width: MediaQuery.of(context).size.width / 3,
      height: MediaQuery.of(context).size.width / 1.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
      ),
      child: ListView(
          padding: EdgeInsets.only(left: 15, right: 15),
          scrollDirection: Axis.horizontal,
          children: prop.map((data) {
            return cardPopuler(context, data["price"], data["title"],
                data["image"], data['rate']);
          }).toList()),
    );
  }

  Container cardPopuler(BuildContext context, String price, String title,
      String image, int rate) {
    bool isClick = false;
    return Container(
      margin: EdgeInsets.only(
        left: 10,
      ),
      height: MediaQuery.of(context).size.width / 3,
      width: MediaQuery.of(context).size.width / 2,
      child: GestureDetector(
        onLongPress: () {
          setState(() {
            isClick = !isClick;
          });
        },
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CourseDetail();
          }));
        },
        child: Card(
            elevation: (isClick) ? 9 : 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: MediaQuery.of(context).size.width / 3,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(18),
                            topRight: Radius.circular(18)),
                        image: DecorationImage(
                            image: AssetImage("assets/$image"),
                            fit: BoxFit.cover)),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(12, 7, 12, 0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            price,
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 8,
                                fontFamily: "Poppins"),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Text(
                              title,
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Poppins"),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 4),
                            child: Row(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(right: 6),
                                    child: Image(
                                        image: AssetImage("assets/star1.png"))),
                                Container(
                                    margin: EdgeInsets.only(right: 6),
                                    child: Image(
                                        image: AssetImage("assets/star1.png"))),
                                Container(
                                    margin: EdgeInsets.only(right: 6),
                                    child: Image(
                                        image: AssetImage("assets/star1.png"))),
                                Container(
                                    margin: EdgeInsets.only(right: 6),
                                    child: Image(
                                        image: AssetImage("assets/star1.png"))),
                                Container(
                                    margin: EdgeInsets.only(right: 6),
                                    child: Image(
                                        image: AssetImage("assets/star1.png"))),
                                Container(
                                    margin: EdgeInsets.only(left: 4),
                                    child: Text(
                                      rate.toString(),
                                      style: TextStyle(
                                          fontSize: 8.5, color: Colors.grey),
                                    ))
                              ],
                            ),
                          )
                        ]),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
