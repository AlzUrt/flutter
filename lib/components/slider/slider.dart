import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:padsou/components/image_grid.dart';
import 'package:padsou/assets/colors.dart';

class MyCarousel extends StatefulWidget {
  const MyCarousel({Key? key}) : super(key: key);

  @override
  MyCarouselState createState() => MyCarouselState();
}

class MyCarouselState extends State<MyCarousel> {

  final List<Widget> items = [
    const ImageGrid(), const ImageGrid(),const ImageGrid()
    //Ajouter ici les deux autres éléments
  ];

  final CarouselController _controller = CarouselController();

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              items.length,
              (index) => Container(
                width: 25,
                height: 5,
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: _current == index ? Colors.white : CustomColors.white40,
                ),
                child: const SizedBox.expand(),
              ),
            ),
          ),
          const SizedBox(height: 25),
        CarouselSlider.builder(
          carouselController: _controller,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index, int pageViewIndex) {

            return items[index];
          },
          options: CarouselOptions(
            height: 300,
            viewportFraction: 1,
            enableInfiniteScroll: false, //désactive le défilement infini
            enlargeCenterPage: true,
            aspectRatio: 16/9,
            autoPlay: false,
            onPageChanged: (index, _) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),


      ],
    );
  }
}
