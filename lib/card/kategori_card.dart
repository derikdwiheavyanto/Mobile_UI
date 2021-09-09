import 'package:flutter/material.dart';

class KategoriCard extends StatefulWidget {
  const KategoriCard({Key? key}) : super(key: key);

  @override
  _KategoriCardState createState() => _KategoriCardState();
}

// Kategori Card
class _KategoriCardState extends State<KategoriCard> {
  final List<Map> listCard = [];

  _KategoriCardState() {
    listCard.add(
        {"url": "assets/icon_design.png", "title": "Design", "course": 43});
    listCard.add({
      "url": "assets/icon_softskill.png",
      "title": "Soft Skill",
      "course": 12
    });
    listCard.add({"url": "assets/icon_art.png", "title": "Art", "course": 50});

    listCard.map((e) => print(e));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.width / 3,
        width: MediaQuery.of(context).size.width / 3,
        child: ListView.builder(
          padding: EdgeInsets.only(left: 15, right: 15),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: listCard.length,
          itemBuilder: (context, index) {
            return card(context, '${listCard[index]["url"]}',
                '${listCard[index]["title"]}', (listCard[index]["course"]));
          },
        ));
  }
}

Container card(BuildContext context, String url, String title, int course) {
  return Container(
    margin: EdgeInsets.only(
      left: 10,
    ),
    height: MediaQuery.of(context).size.width / 3,
    width: MediaQuery.of(context).size.width / 3,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(18)),
    child: Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.width / 12,
                width: MediaQuery.of(context).size.width / 12,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(url), fit: BoxFit.cover),
                ),
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Poppins"),
              ),
              Text(course.toString() + " Course",
                  style: TextStyle(
                      fontSize: 9.5, color: Colors.grey, fontFamily: "Poppins"))
            ],
          )),
    ),
  );
}
