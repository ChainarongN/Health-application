import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// Slider
final List<String> images = [
  'https://i.pinimg.com/originals/34/44/9c/34449c9b13139c415c2dd90c89e0ff9d.jpg',
  'https://blackpinkupdate.com/wp-content/uploads/2018/04/blackpink-rose-instagram-photo-2018-cute.jpg',
  'https://i.ytimg.com/vi/-ngjYgtxfN4/hqdefault.jpg',
  'https://qph.fs.quoracdn.net/main-qimg-d547b217812b9b13318f417d7bf1c95f',
  'https://i.pinimg.com/564x/b2/ec/39/b2ec398056a861dfd1c72fbc29cfefff.jpg',
  'https://pm1.narvii.com/6420/44603d7215cd3346f15be83ed42d4057fa06f652_hq.jpg',
  'https://blackpinkupdate.com/wp-content/uploads/2018/06/BLACKPINK-Selfie-SBS-Boom-Boom-Power-FM.jpg',
  'https://pbs.twimg.com/media/Dr5BCrRV4AELLfL.jpg',
  'https://pbs.twimg.com/profile_images/1015541941444808710/dTX2ZgKg_400x400.jpg',
  'https://pbs.twimg.com/media/D-kD42IU4AAfK7j.jpg',
  'https://www.wowkeren.com/display/images/photo/2018/09/14/00224099.jpg',
  'https://i.pinimg.com/736x/d2/64/75/d26475fa6b1b9832bcd3ec5a2c846a02.jpg',
  'https://k-luv.leonparenzo.com/wp-content/uploads/2020/04/top-5-reasons-to-stop-hating-blackpink-jennie.png'
];

//final List<String> images2 = [
//  'images/slider_image1.jpg',
//  'images/slider_image2.jpg',
//  'images/slider_image3.jpg',
//  'images/slider_image4.jpg',
//  'images/slider_image5.jpg',
//  'images/slider_image6.jpg',
//  'images/slider_image7.jpg',
//  'images/slider_image8.jpg',
//];

Container showSlider() {
  return Container(
    child: CarouselSlider.builder(
      itemCount: images.length,
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
      ),
      itemBuilder: (context, index) {
        return Container(
          child: Center(
            child: Image.network(images[index], fit: BoxFit.cover, width: 1000),      // Show path https:// bra bra bra . . .
//            child: Image.asset(images2[index], fit: BoxFit.cover, width: 1000),      // Show path images in your application
          ),
        );
      },
    ),
  );
}
