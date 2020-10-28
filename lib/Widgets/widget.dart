import 'package:cartoon/Declarations/Images.dart';
import 'package:cartoon/Declarations/Info.dart';
import 'package:flutter/material.dart';

List<Widget> seriesType = [
  buildPremierType(),
  buildTopRatedType(),
  buildPopularType(),
  buildPremierType(),
  buildPopularType(),
];

Widget buildPremierType() {
  return Padding(
    padding: const EdgeInsets.only(right: 10),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.red,
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Text(
          "Premier",
          style: TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
    ),
  );
}

Widget buildTopRatedType() {
  return Padding(
    padding: const EdgeInsets.only(right: 10),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.yellow[700],
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Text(
          "Top Rated",
          style: TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
    ),
  );
}

Widget buildPopularType() {
  return Padding(
    padding: const EdgeInsets.only(right: 10),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.blue,
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Text(
          "Popular",
          style: TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
    ),
  );
}

Widget buildTopContainer() {
  return Container(
    height: 325,
    width: double.infinity,
    color: Color(0xFF2508CF),
    child: Padding(
      padding: const EdgeInsets.all(25),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to CartoonApp",
              style: TextStyle(
                  color: Colors.indigoAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            Container(
              width: 350,
              child: Text(
                "Explore popular Cartoon Series",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget buildListView(BuildContext context) {
  return Positioned(
    top: 140,
    child: Container(
      color: Colors.transparent,
      width: MediaQuery.of(context).size.width,
      height: 400,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return buildCards(context, index);
        },
      ),
    ),
  );
}

Widget buildRecentUploads() {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Recent Uploads",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Row(
            children: [
              Text(
                "See All",
                style: TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              Icon(
                Icons.navigate_next,
                size: 20,
                color: Colors.indigoAccent,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget buildEpisodeCards(int i) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Container(
      width: double.infinity,
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.5),
        color: Colors.transparent,
      ),
      child: ListTile(
        leading: Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.5),
            color: Colors.indigo[100],
          ),
          child: Icon(
            Icons.movie_filter,
            color: Colors.indigo,
            size: 35.5,
          ),
        ),
        title: Text(
          "Episode - ${(i)}",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
    ),
  );
}

Widget buildCards(BuildContext context, int index) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 15,
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: Card(
        color: Colors.transparent,
        child: Column(
          children: [
            buildImage(context, index),
            buildDesc(context, index),
          ],
        ),
      ),
    ),
  );
}

Widget buildImage(BuildContext context, int index) {
  return Container(
    height: 275,
    width: MediaQuery.of(context).size.width / 1.5,
    child: Image.asset(image[index], fit: BoxFit.fill),
  );
}

Widget buildDesc(BuildContext context, int index) {
  return FittedBox(
    clipBehavior: Clip.none,
    alignment: Alignment.centerLeft,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5)),
        color: Colors.white,
      ),
      height: 115,
      width: MediaQuery.of(context).size.width / 1.5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 2.5,
            ),
            Text(
              seriesName[index],
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              seriesTime[index],
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildRating(seriesRating[index]),
                  seriesType[index],
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget buildRating(int rate) {
  return Row(
    children: [
      for (int i = 0; i < rate; i++)
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
      for (int i = 0; i < (5 - rate); i++)
        Icon(
          Icons.star_outline,
          color: Colors.grey,
        ),
    ],
  );
}
