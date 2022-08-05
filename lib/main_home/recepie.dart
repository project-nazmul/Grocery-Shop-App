import 'package:flutter/material.dart';
import 'package:grocery_shop/design/custom_text.dart';
import 'package:grocery_shop/screen/all_popular.dart';
import 'package:grocery_shop/widget/categories.dart';
import 'package:grocery_shop/widget/custom_search_bar.dart';

class Recepie extends StatelessWidget {
  const Recepie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 40, left: 20, right: 20, bottom: 15),
              child: Row(
                children: const [
                  Expanded(
                      flex: 4,
                      child: CustomText(
                          text: 'Choose your ones from 1000+ recipes',
                          clr: Colors.black,
                          fw: FontWeight.bold,
                          fs: 20)),
                  Expanded(flex: 2, child: SizedBox())
                ],
              ),
            ),
            const CustomSearchBar(),
            Padding(
              padding: const EdgeInsets.only(
                  right: 20, left: 20, bottom: 8, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomText(
                      text: 'Categories',
                      clr: Colors.black,
                      fw: FontWeight.bold,
                      fs: 25),
                  CustomText(
                      text: 'See All',
                      clr: Colors.deepOrange,
                      fw: FontWeight.bold,
                      fs: 15),
                ],
              ),
            ),
            const SizedBox(height: 100, child: Categories()),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                      text: 'Popular Deals',
                      clr: Colors.black,
                      fw: FontWeight.bold,
                      fs: 25),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const AllPopular(),
                        ));
                      },
                      child: const CustomText(
                          text: 'See All',
                          clr: Colors.deepOrange,
                          fw: FontWeight.bold,
                          fs: 15)),
                ],
              ),
            ),
          ],
        ));
  }
}
