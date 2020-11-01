import 'dart:ui';
import 'package:cartoon/Declarations/Images.dart';
import 'package:cartoon/Widgets/DetailsPageWidget.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final index;

  const DetailsPage(this.index);
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              image[widget.index],
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Colors.grey.shade100.withOpacity(0.05),
              width: (MediaQuery.of(context).size.width),
              height: (MediaQuery.of(context).size.height),
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildTopIcon(0, context),
                            buildTopIcon(1, context),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        buildDetailImage(context, widget.index),
                        SizedBox(
                          height: 25,
                        ),
                        buildDesc(widget.index),
                        SizedBox(
                          height: 25,
                        ),
                        buildwatchButton(context),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
