import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:padsou/components/ImageGrid.dart';

class MyCarousel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index, int pageViewIndex) {
          return  Column(
              children: [

                ImageGrid(),
    
              ],
            );
        },
        options: CarouselOptions(
          height: 400,
          viewportFraction: 1,
        ),
      ),
    );
  }
}
