import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:homesweet/pages/NavBar.dart';

class Carousel extends StatelessWidget {
  Carousel({Key? key}) : super(key: key);
  final List urlImages = [
    'https://tinyurl.com/58u5ujy9',
    'https://tinyurl.com/2m28hvtc',
    'https://tinyurl.com/2p893fyf'
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.grey[400],
        drawer: NavBar(),
        appBar: AppBar(
          title: Text('Client page'),
          centerTitle: true,
          backgroundColor: Colors.grey[700],
        ),
        body: Center(
          child: CarouselSlider.builder(
            options: CarouselOptions(height: 400),
            itemCount: urlImages.length,
            itemBuilder: (context, index, realIndex) {
              final urlImage = urlImages[index];
              return buildImage(urlImage, index);
            },
          ),
        ),
      );

  Widget buildImage(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        color: Colors.grey,
        child: Image.network(
          urlImage,
          fit: BoxFit.cover,
        ),
      );
}
