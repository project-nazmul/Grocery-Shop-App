import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:grocery_shop/model/data.dart';

class Products extends StatelessWidget {
   Products({Key? key}) : super(key: key);

  final List<Widget> myList = [
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
            image: AssetImage(Data.carouselImg[0])),
        borderRadius: BorderRadius.circular(25),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Data.carouselImg[1])),
        borderRadius: BorderRadius.circular(25),
        color: Colors.black,
      ),
    ),
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Data.carouselImg[2])),
        borderRadius: BorderRadius.circular(25),
        color: Colors.black,
      ),
    ),
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Data.carouselImg[3])),
        borderRadius: BorderRadius.circular(25),
        color: Colors.black,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,bottom: 15),
      child: CarouselSlider(
        items: myList,
        options: CarouselOptions(
          enlargeCenterPage: true,
          height: double.infinity,
          initialPage: 0,
          scrollDirection: Axis.horizontal,
        )
      ),
    );
  }
}
