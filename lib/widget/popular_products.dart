import 'package:flutter/material.dart';
import 'package:grocery_shop/design/custom_text.dart';
import 'package:grocery_shop/model/data.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: Data.popularItem.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      ),
      itemBuilder: (context,index){
        return Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30,left: 15,right: 15,bottom: 5),
              padding: const EdgeInsets.only(bottom: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomText(text: Data.popularItem[index]['name'], clr: Colors.black, fw: FontWeight.bold, fs: 20),
                  CustomText(text: Data.popularItem[index]['info'], clr: Colors.black, fw: FontWeight.normal, fs: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomText(text: Data.popularItem[index]['price'], clr: Colors.black, fw: FontWeight.bold, fs: 15),
                      const Icon(Icons.add_box_rounded,color: Colors.deepOrange,)
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20,left: 20,bottom: 90),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                    image: AssetImage(Data.popularItem[index]['img'])),
                color: Colors.red,
                shape: BoxShape.circle
              ),
            ),

          ],
        );
      }
    );
  }
}
