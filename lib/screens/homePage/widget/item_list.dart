import 'package:flutter/material.dart';

List myItemList(int sessionNum) {
  List<PlaceInfo> items = [];

  if (sessionNum == 0) {
    var item = [
      PlaceInfo('aaaaaaaaaaaaaa', Color(0xff6dc8f3), Color(0xff73a1f9), 4.4,
          '11111111111111111', 'test • 1'),
      PlaceInfo('bbbbbbbbbbbbbb', Color(0xff6dc8f3), Color(0xff73a1f9), 3.7,
          '22222222222222222', 'test • 2'),
      PlaceInfo('cccccccccccccc', Color(0xff6dc8f3), Color(0xff73a1f9), 4.5,
          '33333333333333333', 'test • 3'),
      PlaceInfo('dddddddddddddd', Color(0xff6dc8f3), Color(0xff73a1f9), 4.1,
          '44444444444444444', 'test • 4'),
      PlaceInfo('eeeeeeeeeeeeee', Color(0xff6dc8f3), Color(0xff73a1f9), 4.2,
          '55555555555555555', 'test • 5'),
    ];
    items = item;
  }
  if (sessionNum == 1) {
    var item = [
      PlaceInfo('aaaaaaaaaaaaaa', Color(0xffffb157), Color(0xffffa057), 4.4,
          '11111111111111111', 'test • 1'),
      PlaceInfo('bbbbbbbbbbbbbb', Color(0xffffb157), Color(0xffffa057), 3.7,
          '22222222222222222', 'test • 2'),
      PlaceInfo('cccccccccccccc', Color(0xffffb157), Color(0xffffa057), 4.5,
          '33333333333333333', 'test • 3'),
      PlaceInfo('dddddddddddddd', Color(0xffffb157), Color(0xffffa057), 4.1,
          '44444444444444444', 'test • 4'),
      PlaceInfo('eeeeeeeeeeeeee', Color(0xffffb157), Color(0xffffa057), 4.2,
          '55555555555555555', 'test • 5'),
    ];
    items = item;
  }
  if (sessionNum == 2) {
    var item = [
      PlaceInfo('aaaaaaaaaaaaaa', Color(0xffff5895), Color(0xfff85560), 4.4,
          '11111111111111111', 'test • 1'),
      PlaceInfo('bbbbbbbbbbbbbb', Color(0xffff5895), Color(0xfff85560), 3.7,
          '22222222222222222', 'test • 2'),
      PlaceInfo('cccccccccccccc', Color(0xffff5895), Color(0xfff85560), 4.5,
          '33333333333333333', 'test • 3'),
      PlaceInfo('dddddddddddddd', Color(0xffff5895), Color(0xfff85560), 4.1,
          '44444444444444444', 'test • 4'),
      PlaceInfo('eeeeeeeeeeeeee', Color(0xffff5895), Color(0xfff85560), 4.2,
          '55555555555555555', 'test • 5'),
    ];
    items = item;
  }
  if (sessionNum == 3) {
    var item = [
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
    items = item;
  }
  if (sessionNum == 4) {
    var item = [
      PlaceInfo('aaaaaaaaaaaaaa', Color(0xff42e695), Color(0xff3bb2b8), 4.4,
          '11111111111111111', 'test • 1'),
      PlaceInfo('bbbbbbbbbbbbbb', Color(0xff42e695), Color(0xff3bb2b8), 3.7,
          '22222222222222222', 'test • 2'),
      PlaceInfo('cccccccccccccc', Color(0xff42e695), Color(0xff3bb2b8), 4.5,
          '33333333333333333', 'test • 3'),
      PlaceInfo('dddddddddddddd', Color(0xff42e695), Color(0xff3bb2b8), 4.1,
          '44444444444444444', 'test • 4'),
      PlaceInfo('eeeeeeeeeeeeee', Color(0xff42e695), Color(0xff3bb2b8), 4.2,
          '55555555555555555', 'test • 5'),
    ];
    items = item;
  }
  if (sessionNum == 5) {
    var item = [
      PlaceInfo('aaaaaaaaaaaaaa', Color(0xff6dc8f3), Color(0xff73a1f9), 4.4,
          '11111111111111111', 'test • 1'),
      PlaceInfo('bbbbbbbbbbbbbb', Color(0xffffb157), Color(0xffffa057), 3.7,
          '22222222222222222', 'test • 2'),
      PlaceInfo('cccccccccccccc', Color(0xffff5895), Color(0xfff85560), 4.5,
          '33333333333333333', 'test • 3'),
      PlaceInfo('dddddddddddddd', Color(0xffd76ef5), Color(0xff8f7afe), 4.1,
          '44444444444444444', 'test • 4'),
      PlaceInfo('eeeeeeeeeeeeee', Color(0xff42e695), Color(0xff3bb2b8), 4.2,
          '55555555555555555', 'test • 5'),
    ];
    items = item;
  }

  return items;
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
