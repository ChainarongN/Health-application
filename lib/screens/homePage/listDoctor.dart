import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:health_application/screens/homePage/widget/item_list.dart';
import 'package:health_application/utility/constants.dart';
import 'file:///C:/Users/NGz/Documents/GitHub/Health-application/lib/screens/homePage/widget/star.dart';

class ListDoctor extends StatelessWidget {
  int sessionNum = 0;

  ListDoctor({Key key, this.sessionNum}) : super(key: key);
  final double _borderRadius = 24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Doctor'),
      ),
      body: ListView.builder(
        itemCount: myItemList(sessionNum).length,
        itemBuilder: (context, index) {
          return Center(
            child: InkWell(
              onTap: () {
                Scaffold.of(context).showSnackBar(SnackBar(content: Text(index.toString())));
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_borderRadius),
                        gradient: LinearGradient(
                          colors: [
                            myItemList(sessionNum)[index].startColor,
                            myItemList(sessionNum)[index].endColor,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: myItemList(sessionNum)[index].endColor,
                              blurRadius: 12,
                              offset: Offset(0, 6)),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      top: 0,
                      child: CustomPaint(
                        size: Size(100, 150),
                        painter: CustomCardShapePainter(
                            _borderRadius,
                            myItemList(sessionNum)[index].startColor,
                            myItemList(sessionNum)[index].endColor),
                      ),
                    ),
                    Positioned.fill(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: ClipOval(
                              child: Image.asset(
                                'images/111.jpg',
                                height: 100,
                                width: 90,
                              ),
                            ),
                            flex: 3,
                          ),
                          Expanded(
                            flex: 4,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  myItemList(sessionNum)[index].name,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  myItemList(sessionNum)[index].category,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                mySizedBox(16),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.assignment,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    mySizedBox_width(5),
                                    Flexible(
                                      child: Text(
                                        myItemList(sessionNum)[index]
                                            .description,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  myItemList(sessionNum)[index]
                                      .rating
                                      .toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                RaingBar(
                                    Rating:
                                        myItemList(sessionNum)[index].rating),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CustomCardShapePainter extends CustomPainter {
  final double radius;
  final Color startColor;
  final Color endColor;

  CustomCardShapePainter(this.radius, this.startColor, this.endColor);

  @override
  void paint(Canvas canvas, Size size) {
    var radius = 24.0;

    var paint = Paint();
    paint.shader = ui.Gradient.linear(
        Offset(0, 0), Offset(size.width, size.height), [
      HSLColor.fromColor(startColor).withLightness(0.8).toColor(),
      endColor
    ]);

    var path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width - radius, size.height)
      ..quadraticBezierTo(
          size.width, size.height, size.width, size.height - radius)
      ..lineTo(size.width, radius)
      ..quadraticBezierTo(size.width, 0, size.width - radius, 0)
      ..lineTo(size.width - 1.5 * radius, 0)
      ..quadraticBezierTo(-radius, 2 * radius, 0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
