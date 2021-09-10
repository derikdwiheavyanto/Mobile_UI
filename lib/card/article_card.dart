import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

// Articles card
class ArticleCard extends StatefulWidget {
  const ArticleCard({Key? key}) : super(key: key);

  @override
  AarticleCardState createState() => AarticleCardState();
}

class AarticleCardState extends State<ArticleCard> {
  bool isLiked = false;
  List articleList = [];

  AarticleCardState() {
    articleList.add({
      "image": "image9.png",
      "title": "How to: Work faster as Full Stack Designer",
      "subTitle": "UI Design"
    });
    articleList.add({
      "image": "image10.png",
      "title": "How to: Digital Art from Sketch",
      "subTitle": "Art Course"
    });
    articleList.add({
      "image": "image9.png",
      "title": "How to: Work faster as Full Stack Designer",
      "subTitle": "Art Course"
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 12),
        width: MediaQuery.of(context).size.width * 1,
        child: Column(
          children: articleList.map((data) {
            return buildArticleCard(
                data["image"], data["title"], data["subTitle"]);
          }).toList(),
        ));
  }

  Container buildArticleCard(String image, String title, String subTitle) {
    return Container(
      margin: EdgeInsets.only(right: 22, left: 22),
      width: MediaQuery.of(context).size.width * 1,
      height: 80,
      // height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Row(
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      bottomLeft: Radius.circular(18)),
                  image: DecorationImage(
                      image: AssetImage("assets/$image"), fit: BoxFit.cover),
                )),
            Container(
              width: MediaQuery.of(context).size.width * 0.40,
              margin: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins"),
                  ),
                  Spacer(),
                  Text(
                    subTitle,
                    style: TextStyle(fontSize: 7, fontFamily: "Poppins"),
                  )
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Container(
             margin: EdgeInsets.only(right: 30),
              child: LikeButton(
                size: 20,
                isLiked: isLiked,
                likeBuilder: (isLiked) {},
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
