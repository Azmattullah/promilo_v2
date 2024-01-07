// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CatBlock extends StatelessWidget {
  CatBlock(
      {super.key, required this.categoryName, required this.categoryImgSrc});

  String categoryName;
  String categoryImgSrc;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 280,
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1)),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Stack(children: [
        Positioned(
          left: 20,
          top: 10,
          child: Text(
            categoryName,
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        Positioned(
          left: 150,
          top: 90,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
            onPressed: () {},
            child: Text(
              'See More',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Positioned(
          left: 10,
          top: 30,
          child: Text(
            '_______________________________________________________________',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ]),
    );
  }
}

// ------------------------------------------------------------------------

class CatBlock2 extends StatelessWidget {
  String categoryName;
  String categoryImgSrc;
  CatBlock2(
      {super.key, required this.categoryImgSrc, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 160,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
              height: 200, width: 160, fit: BoxFit.cover, categoryImgSrc),
        ),
        Positioned(
            left: 100,
            top: 120,
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
            )),
        Positioned(
            left: 105,
            top:130,
          child: Text(
            categoryName,
            style: TextStyle(
                color: Colors.black, fontSize: 40, fontWeight: FontWeight.w500),
          ),
        ),
      ]),
    );
  }
}
