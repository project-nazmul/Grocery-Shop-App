import 'package:flutter/material.dart';
import 'package:grocery_shop/design/custom_text.dart';
import 'package:grocery_shop/design/page_design.dart';
import 'package:grocery_shop/screen/registration.dart';
import 'package:dots_indicator/dots_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double currentIndexPage = 0;

  setIndicator(int index) {
    setState(() {
      currentIndexPage = index.toDouble();
    });
  }

  final List pages = [
    const PageDesign(
        imgUrl:
            'https://howmuch-pk.s3.ap-southeast-1.amazonaws.com/blogs/148/original/Save%252520more%252520and%252520stay%252520safe.jpg',
        headLine: 'Welcome',
        subLine: '15000+ Grocery items available'),
    const PageDesign(
        imgUrl:
            'https://st.depositphotos.com/1887135/4712/i/600/depositphotos_47120155-stock-photo-shopping-basket-with-groceries.jpg',
        headLine: 'Fast Delivery',
        subLine: 'Very fast delivery with daily delivery and custom delivery'),
    const PageDesign(
        imgUrl:
            'https://us.123rf.com/450wm/estradaanton/estradaanton1903/estradaanton190300809/119506684-young-couple-in-grocery-store-funny-family-pose-on-camera-and-smile-she-cover-eyes-with-peppers-he-h.jpg',
        headLine: 'ALL in One',
        subLine: 'You will find everything here'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 13,
              child: PageView.builder(
                itemCount: pages.length,
                itemBuilder: (context, index) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    // Add Your Code here.
                    setIndicator(index);
                  });
                  return pages[index];
                },
              )),
          Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                      child: Center(
                          child: currentIndexPage == 0
                              ? InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) =>
                                          const Registration(),
                                    ));
                                  },
                                  child: const Text(
                                    'Skip',
                                    style: TextStyle(color: Colors.blue),
                                  ))
                              : const Text(''))),
                  Expanded(
                    child: Center(
                      child: DotsIndicator(
                        dotsCount: pages.length,
                        position: currentIndexPage,
                        decorator: DotsDecorator(
                          activeColor: Colors.deepOrange,
                          size: const Size.square(9.0),
                          activeSize: const Size(18.0, 9.0),
                          activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Center(
                          child: currentIndexPage == pages.length - 1
                              ? ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.deepOrange)),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) =>
                                          const Registration(),
                                    ));
                                  },
                                  child: const CustomText(
                                      text: 'Start',
                                      clr: Colors.black,
                                      fw: FontWeight.normal,
                                      fs: 15))
                              : const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.blue,
                                )))
                ],
              )),
        ],
      ),
    );
  }
}
