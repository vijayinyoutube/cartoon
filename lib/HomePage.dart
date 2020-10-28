import 'package:flutter/material.dart';

import 'Widgets/widget.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 540,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    buildTopContainer(),
                    buildListView(context),
                  ],
                ),
              ),
              buildRecentUploads(),
              for (int i = 1; i <= 50; i++) buildEpisodeCards(i),
            ],
          ),
        ),
      ),
    );
  }
}

