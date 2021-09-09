import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:slicer_ui/card/article_card.dart';

import 'package:slicer_ui/card/kategori_card.dart';
import 'package:slicer_ui/card/popular_card.dart';
import 'package:slicer_ui/screen/course_detail_page.dart';

import 'material/title_with_navigator.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFAFAFA),
        body: Container(
          child: ListView(
            children: [
              Column(children: [
                // header
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.fromLTRB(30, 20, 30, 10),
                  child: Row(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child:
                                Image(image: AssetImage("assets/image6.png")),
                          )),
                      Spacer(),
                      Row(
                        children: [
                          Image(image: AssetImage("assets/btn_search.png")),
                          Image(
                            image: AssetImage("assets/btn_notif.png"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
              // Headline
              Container(
                margin: EdgeInsets.fromLTRB(30, 10, 127, 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Want to Study Class what's Today?",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins"),
                ),
              ),

              // Kategori
              KategoriCard(),
              // Populer Course
              TitleWithNavigator(title: "Popular Course", page: CourseDetail()),
              // popular Course Card
              PopularCard(),
              // Articles
              TitleWithNavigator(title: "Articles", page: CourseDetail()),
              // Article Card
              ArticleCard()
            ],
          ),
        ));
  }
}
