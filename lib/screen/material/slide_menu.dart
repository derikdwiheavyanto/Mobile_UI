import 'package:flutter/material.dart';

class SlideMenu extends StatefulWidget {
  const SlideMenu({Key? key}) : super(key: key);

  @override
  _SlideMenuState createState() => _SlideMenuState();
}

class _SlideMenuState extends State<SlideMenu> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    // int indek = index;
    List data = [
      Center(
        child: Text("Page 1"),
      ),
      listBuilder(),
      Center(
        child: Text("Page 3"),
      ),
      Center(
        child: Text("Page 4"),
      ),
      Center(
        child: Text("Page 4"),
      ),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.only(top: 22),
            child: SingleChildScrollView(
              padding: EdgeInsets.only(left: 22, right: 15),
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                slideMenu(0, "About"),
                slideMenu(1, "Lesson"),
                slideMenu(2, "Tools"),
                slideMenu(3, "Resource"),
                slideMenu(4, "Reviews"),
              ]),
            )),

        //
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Title
            Container(
                margin: EdgeInsets.only(left: 24, top: 18, bottom: 6),
                child: Text("Course List",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600))),

            // Card Course List
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.5,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 75),
              decoration: BoxDecoration(
                  // color: Colors.amber,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: Padding(
                    padding: EdgeInsets.only(left: 12, right: 12),
                    child: Scrollbar(
                        radius: Radius.circular(10), child: data[index])),
              ),
            ),
          ],
        )
      ],
    );
  }

  Container slideMenu(int index, String title) {
    return Container(
        margin: EdgeInsets.only(right: 12),
        child: GestureDetector(
          onTap: () {
            setState(() {
              this.index = index;
            });
          },
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: (this.index == index)
                      ? Color(0xFFD1E2FD)
                      : Colors.transparent,
                ),
                padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                    color: (this.index == index)
                        ? Color(0xFF006EEE)
                        : Colors.black,
                  ),
                )),
          ),
        ));
  }

  Widget listBuilder() {
    List listBuilderData = [
      {"title": "Visual Design Intro", "time": "04:47"},
      {"title": "Design Reference", "time": "04:47"},
      {"title": "Create Moodboard", "time": "04:47"},
      {"title": "Wireframe to Visual Design Part 1", "time": "04:47"},
      {"title": "Wireframe to Visual Design Part 2", "time": "04:47"},
      {"title": "Wireframe to Visual Design Part 2", "time": "04:47"},
      {"title": "Wireframe to Visual Design Part 2", "time": "04:47"},
      {"title": "Wireframe to Visual Design Part 2", "time": "04:47"},
    ];

    return ListView.builder(
      padding: EdgeInsets.only(top: 15),
      itemCount: listBuilderData.length,
      itemBuilder: (context, index) {
        int _counter = index + 1;
        return listContent(_counter, listBuilderData[index]["title"],
            listBuilderData[index]["time"]);
      },
    );
  }

  Widget listContent(int _counter, String title, String time) {
    return Container(
      // width: 100,

      // color: Colors.amber,
      margin: EdgeInsets.fromLTRB(12, 0, 12, 12),
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                color: Color(0xFFD1E2FD),
                borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Text(
                _counter.toString(),
                style: TextStyle(fontSize: 11, color: Color(0xFF006EEE)),
              ),
            ),
          ),
          Container(
              // padding: EdgeInsets.only(right: 8),
              margin: EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                    textAlign: TextAlign.justify,
                  ),
                  Text(time,
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFA2ADB1)))
                ],
              ))
        ],
      ),
    );
  }
}
