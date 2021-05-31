import 'package:flutter/material.dart';
import 'package:sourcefile/details.dart';
import 'package:sourcefile/homepage.dart';


class BottombarBar extends StatefulWidget {
  @override
  _BottombarBarState createState() => _BottombarBarState();
}

class _BottombarBarState extends State<BottombarBar> {
  int currentIndex = 2;

  List<Widget> currentPage = [
    HomePage(),
    Details(),
    HomePage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage[currentIndex],
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 70,
        color: Colors.black87,
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => setState(() => currentIndex = 0),
                child: Column(
                  children: [
                    Image(
                      color: currentIndex == 0 ? Colors.orangeAccent : Colors.white,
                      image: AssetImage('asset/images/ic1.png'),),
                  ],
                ),
              ),
              InkWell(
                onTap: () => setState(() => currentIndex = 1),
                child: Column(
                  children: [
                   Image(
                       color: currentIndex == 1 ? Colors.orangeAccent : Colors.white,
                       image: AssetImage('asset/images/Bookmark.png'))
                  ],
                ),
              ),
              InkWell(
                onTap: () => setState(() => currentIndex = 2),
                child: Column(
                  children: [
                    Image(
                      color: currentIndex == 2 ? Colors.orangeAccent : Colors.white,
                      image: AssetImage('asset/images/Buy.png'),),
                  ],
                ),
              ),
              InkWell(
                onTap: () => setState(() => currentIndex = 3),
                child: Column(
                  children: [
                    Image(
                      color: currentIndex == 3 ? Colors.orangeAccent : Colors.white,
                      image: AssetImage(
                        'asset/images/ic4.png',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
