import 'package:flutter/material.dart';
import 'package:grocery_shop/design/custom_text.dart';
import 'package:grocery_shop/model/value_change.dart';
import 'package:grocery_shop/screen/all_popular.dart';
import 'package:grocery_shop/widget/categories.dart';
import 'package:grocery_shop/widget/custom_app_bar.dart';
import 'package:grocery_shop/widget/custom_search_bar.dart';
import 'package:grocery_shop/widget/popular_products.dart';
import 'package:grocery_shop/widget/products.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provide = Provider.of<ValueChange>(context, listen: true);
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: provide.darkMode ? Colors.black45 : Colors.blue[100],
          body: Column(
            children: [
              Expanded(flex: 1, child: CustomAppBar()),
              const Expanded(flex: 1, child: CustomSearchBar()),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15, bottom: 8),
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
              const Expanded(flex: 1, child: Categories()),
              Expanded(flex: 2, child: Products()),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15, bottom: 5),
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
              const Expanded(flex: 2, child: PopularProducts()),
            ],
          )),
    );
  }
}
