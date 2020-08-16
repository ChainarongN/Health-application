import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:health_application/utility/constants.dart';
import 'package:health_application/utility/slider.dart';
import 'package:health_application/utility/star.dart';

class ListDoctor4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListDoctorState4();
  }
}

class _ListDoctorState4 extends State<ListDoctor4> {
  final double _borderRadius = 24;

  var items = [
    PlaceInfo('aaaaaaaaaaaaaa', Color(0xffd76ef5), Color(0xff8f7afe), 4.4,
        '11111111111111111', 'test • 1'),
    PlaceInfo('bbbbbbbbbbbbbb', Color(0xffd76ef5), Color(0xff8f7afe), 3.7,
        '22222222222222222', 'test • 2'),
    PlaceInfo('cccccccccccccc', Color(0xffd76ef5), Color(0xff8f7afe), 4.5,
        '33333333333333333', 'test • 3'),
    PlaceInfo('dddddddddddddd', Color(0xffd76ef5), Color(0xff8f7afe), 4.1,
        '44444444444444444', 'test • 4'),
    PlaceInfo('eeeeeeeeeeeeee', Color(0xffd76ef5), Color(0xff8f7afe), 4.2,
        '55555555555555555', 'test • 5'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Doctor'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Center(
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
                          items[index].startColor,
                          items[index].endColor,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: items[index].endColor,
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
                      painter: CustomCardShapePainter(_borderRadius,
                          items[index].startColor, items[index].endColor),
                    ),
                  ),
                  Positioned.fill(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Image.asset(
                            'images/jisoo.jpg',
                            height: 90,
                            width: 90,
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
                                items[index].name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                items[index].category,
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
                                      items[index].description,
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
                                items[index].rating.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                              RaingBar(Rating :items[index].rating),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class PlaceInfo {
  final String name;
  final String category;
  final String description;
  final double rating;
  final Color startColor;
  final Color endColor;

  PlaceInfo(this.name, this.startColor, this.endColor, this.rating,
      this.description, this.category);
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
