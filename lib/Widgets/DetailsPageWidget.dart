import 'package:cartoon/Declarations/Icons.dart';
import 'package:cartoon/Declarations/Images.dart';
import 'package:cartoon/Declarations/Info.dart';
import 'package:cartoon/Declarations/heroTags.dart';
import 'package:flutter/material.dart';

import 'HomePageWidgets.dart';

Widget buildTopIcon(int i, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pop(context);
    },
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.5),
        color: Colors.grey.shade100.withOpacity(0.55),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.5),
        child: icons[i],
      ),
    ),
  );
}

Widget buildDetailImage(BuildContext context, int i) {
  return Center(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10.5),
      child: Container(
        child: Hero(
          tag: tags[i],
          child: Image(
            image: AssetImage(
              image[i],
            ),
            width: (MediaQuery.of(context).size.width) - 150,
            height: (MediaQuery.of(context).size.width) - 200,
            fit: BoxFit.fill,
          ),
        ),
      ),
    ),
  );
}

Widget buildDesc(int i) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          seriesType[i],
          Text(
            seriesName[i],
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey.shade100.withOpacity(0.55),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1.5),
              child: Text(
                seriesTime[i],
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
      buildRating(seriesRating[i]),
    ],
  );
}

Widget buildwatchButton(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.5),
      color: Color(0xFF2508CF),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 3),
          child: Text(
            "Watch Now",
            style: TextStyle(fontSize: 27.5, color: Colors.white),
          ),
        ),
        icons[2],
      ],
    ),
  );
}
