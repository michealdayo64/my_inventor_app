import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'https://www.vincehardwarestore.com/uploads/7YOJeW4p/767x0_2560x0/shutterstock_80238202.jpg',
  'https://i.ytimg.com/vi/zlT-Lg_QFTA/hqdefault.jpg',
  'https://i.ytimg.com/vi/5Oibv4_D6eg/maxresdefault.jpg',
  'https://miro.medium.com/v2/resize:fit:1400/1*HRKEJQgBYUrde4pvaFqhWw.jpeg'
];

class ImageSlider extends StatelessWidget {
  const ImageSlider({super.key});

  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        autoPlay: true,
        enlargeCenterPage: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        aspectRatio: 16 / 9,
        enlargeFactor: 0.3,
        autoPlayInterval: Duration(seconds: 5),
      ),
      items: imgList
          .map((item) => Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
                child: Center(
                    child: Image.network(item,
                        fit: BoxFit.cover, width: double.infinity)),
              ))
          .toList(),
    ));
  }
}
