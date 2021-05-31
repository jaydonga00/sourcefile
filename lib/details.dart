import 'package:flutter/material.dart';
import 'package:sourcefile/common_widget.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 240,
                width: 380,
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                  image: DecorationImage(
                    image: AssetImage('asset/images/bg6.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 270, top: 230),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                maxRadius: 25,
                child: Image(
                  image: AssetImage(
                    'asset/images/bg7.png',
                  ),
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 285, left: 20),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Strawberrt Cake',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Chcuk Donut Restaurant',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 50,
                      ),
                      child: Text(
                        '23.00',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 345, left: 25),
              child: Row(
                children: [
                  Icon(
                    Icons.star_border_rounded,
                    color: Colors.orangeAccent,
                    size: 30,
                  ),
                  Text(
                    '4.7',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ' (58 Reiviews)',
                    style: TextStyle(fontSize: 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Image(
                      image: AssetImage(
                        'asset/images/ic2.png',
                      ),
                      height: 25,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    'Free Delivery',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 400),
              child: Row(
                children: [
                  Text(
                    'Ingredients',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CommonWidget.story(
                    story: "asset/images/s1.png",
                    name: 'Strawberry',
                  ),
                  CommonWidget.story(
                    story: "asset/images/s2.png",
                    name: 'Milk',
                  ),
                  CommonWidget.story(
                    story: "asset/images/s3.png",
                    name: 'Poujnd',
                  ),
                  CommonWidget.story(
                    story: "asset/images/s4.png",
                    name: 'Flour',
                  ),
                  CommonWidget.story(
                    story: "asset/images/s1.png",
                    name: 'Strawberry',
                  ),
                  CommonWidget.story(
                    story: "asset/images/s2.png",
                    name: 'Milk',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 580),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 250, bottom: 5),
                    child: Text(
                      'Food Details',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'Three layer Strawberry dessert is not only beautiful looking , but also delicious! perfect dessert for spring and summer.',
                    style: TextStyle(fontSize: 17),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 270,top: 20),
                    child: Text('Cake Size',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 730, left: 25,bottom: 20),
              child: Container(
                height: 60,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.black87,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 125, top: 16),
                  child: Text(
                    'Add to cart',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
