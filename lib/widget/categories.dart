import 'package:flutter/material.dart';
import 'package:grocery_shop/design/custom_text.dart';
import 'package:grocery_shop/model/data.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: Data.categories.length,
      itemBuilder: (context, index) {
        return Container(
          alignment: Alignment.bottomCenter,
          width: 100,
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(Data.categories[index]['img'])
              )
          ),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepOrange.withOpacity(0.7),
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25))
                ),
                height: 30,
                child: Center(child: CustomText(text: Data.categories[index]['name'], clr: Colors.black, fw: FontWeight.bold, fs: 20)),
              )
            ],
          ),
        );
      },
    );
  }
}
