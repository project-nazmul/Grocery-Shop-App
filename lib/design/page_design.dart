import 'package:flutter/material.dart';
import 'package:grocery_shop/design/custom_text.dart';

class PageDesign extends StatelessWidget {
  const PageDesign(
      {Key? key,
      required this.imgUrl,
      required this.headLine,
      required this.subLine})
      : super(key: key);
  final String imgUrl;
  final String headLine;
  final String subLine;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(imgUrl),
                    )),
                margin: const EdgeInsets.all(20),
              )),
          Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(50),
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                        text: headLine,
                        clr: Colors.black,
                        fw: FontWeight.bold,
                        fs: 20),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomText(
                        text: 'To',
                        clr: Colors.black,
                        fw: FontWeight.bold,
                        fs: 20),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomText(
                        text: 'Groceryus!',
                        clr: Colors.black,
                        fw: FontWeight.bold,
                        fs: 20),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomText(
                        text: subLine,
                        clr: Colors.black.withOpacity(0.7),
                        fw: FontWeight.normal,
                        fs: 20),
                  ],
                ),
              )),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
