import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'https://cf.shopee.co.id/file/id-11134258-7rbk7-m71zp300x3zwda_xhdpi',
  'https://cf.shopee.co.id/file/id-11134258-7rbk0-m81f2jjgju313b_xhdpi',
  'https://cf.shopee.co.id/file/id-11134258-7rbk9-m7tc23iuuuds56_xxhdpi',
];

class Carousel extends StatelessWidget {
  const Carousel({super.key});


  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: imgList.map((path) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Image.network(
                path,
                fit: BoxFit.cover,
              ),
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
        height: 100.0,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
    );
  }
}