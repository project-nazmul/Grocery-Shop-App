import 'package:flutter/material.dart';
import 'package:grocery_shop/design/custom_text.dart';
import 'package:grocery_shop/widget/custom_search_bar.dart';
import 'package:grocery_shop/widget/popular_products.dart';

class AllPopular extends StatelessWidget {
  const AllPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: const CustomText(
              text: 'Popular Deals',
              clr: Colors.black,
              fw: FontWeight.bold,
              fs: 25),
          centerTitle: true,
          leading: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          children: const [
            Expanded(flex: 2, child: CustomSearchBar()),
            Expanded(flex: 16, child: PopularProducts()),
          ],
        ),
      ),
    );
  }
}
