import 'package:flutter/material.dart';
import 'package:slicer_ui/screen/main_page.dart';

class Dasboard extends StatefulWidget {
  const Dasboard({Key? key}) : super(key: key);

  @override
  _DasboardState createState() => _DasboardState();
}

class _DasboardState extends State<Dasboard> {
  int _currentindex = 0;
  final List<Widget> screens = [
    MainPage(),
    Center(child: Text("Page 2")),
    Center(child: Text("Page 3")),
    Center(child: Text("Page 4")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFFAFAFA),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("assets/icon.png"),
                color: (_currentindex == 0) ? Colors.blue : Color(0xFFD1E2FD),
              ),
              label: "Home"),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/explore.png"),
              //  color: (_currentindex == 1) ? Colors.blue : Color(0xFFD1E2FD),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/whitelist.png"),
              color: (_currentindex == 2) ? Colors.blue : Color(0xFFD1E2FD),
            ),
            label: "data",
          ),
          BottomNavigationBarItem(
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image(
                image: AssetImage("assets/image6.png"),
              ),
            ),
            label: "data",
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}
