import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_application/screens/listcategory_doctor/listDoctor.dart';
import 'package:health_application/screens/listcategory_doctor/listDoctor2.dart';
import 'package:health_application/screens/listcategory_doctor/listDoctor3.dart';
import 'package:health_application/screens/listcategory_doctor/listDoctor4.dart';
import 'package:health_application/screens/listcategory_doctor/listDoctor5.dart';
import 'package:health_application/screens/listcategory_doctor/listDoctor6.dart';
import 'package:health_application/utility/constants.dart';
import 'package:health_application/utility/session_card.dart';
import 'package:health_application/utility/slider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return new Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage("images/home_page2.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      "Health",
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                    mySizedBox(10),
                    Text(
                      "3-10 Min Course",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    mySizedBox(10),
                    SizedBox(
                      width: size.width * .5,
                      child: Text(
                        "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                      ),
                    ),
                    mySizedBox(100),
                    Wrap(
                      spacing: 20,
                      runSpacing: 10,
                      children: <Widget>[
                        SessionCard(
                          seassionName: "ทั่วไป",
//                          isDone: true,
                          press: () {
                            MaterialPageRoute route = MaterialPageRoute(
                                builder: (value) => ListDoctor());
                            Navigator.push(context, route);
                          },
                        ),
                        SessionCard(
                          seassionName: "จิตวิทยา",
                          press: () {
                            MaterialPageRoute route = MaterialPageRoute(
                                builder: (value) => ListDoctor2());
                            Navigator.push(context, route);
                          },
                        ),
                        SessionCard(
                          seassionName: "หมอเด็ก",
                          press: () {
                            MaterialPageRoute route = MaterialPageRoute(
                                builder: (value) => ListDoctor3());
                            Navigator.push(context, route);
                          },
                        ),
                        SessionCard(
                          seassionName: "หัวหมอ",
                          press: () {
                            MaterialPageRoute route = MaterialPageRoute(
                                builder: (value) => ListDoctor4());
                            Navigator.push(context, route);
                          },
                        ),
                        SessionCard(
                          seassionName: "หมอหมา",
                          press: () {
                            MaterialPageRoute route = MaterialPageRoute(
                                builder: (value) => ListDoctor5());
                            Navigator.push(context, route);
                          },
                        ),
                        SessionCard(
                          seassionName: "หมอเกิ๊น",
                          press: () {
                            MaterialPageRoute route = MaterialPageRoute(
                                builder: (value) => ListDoctor6());
                            Navigator.push(context, route);
                          },
                        ),
                      ],
                    ),
                    mySizedBox(20),
                    Text(
                      "Health",
                      style: Theme.of(context).textTheme.title.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    mySizedBox(20),
                    showSlider(),
                    mySizedBox(30),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
