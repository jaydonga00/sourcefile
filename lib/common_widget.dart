import 'package:flutter/material.dart';

class CommonWidget {
  static Widget story({String story, String name}) => Padding(
        padding: EdgeInsets.only(left: 10, top: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 430),
              child: CircleAvatar(
                child: Image(
                  image: AssetImage('$story'),
                  fit: BoxFit.cover,
                ),
                maxRadius: 45,
                backgroundColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                '$name',
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      );
}
