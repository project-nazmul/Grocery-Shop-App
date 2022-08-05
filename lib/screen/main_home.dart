import 'package:flutter/material.dart';
import 'package:grocery_shop/main_home/home.dart';
import 'package:grocery_shop/main_home/profile.dart';
import 'package:grocery_shop/main_home/recepie.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int index=0;
  final List pages = [
    const Home(),
    const Recepie(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellow[500],
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                  color: index==0?Colors.green:Colors.transparent,
                borderRadius: BorderRadius.circular(20)
              ),

              padding: const EdgeInsets.only(right: 20,left: 20,top: 5,bottom: 5),
              child: const Icon(Icons.home)
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Container(
                decoration: BoxDecoration(
                    color: index==1?Colors.green:Colors.transparent,
                    borderRadius: BorderRadius.circular(20)
                ),

                padding: const EdgeInsets.only(right: 20,left: 20,top: 5,bottom: 5),
                child: const Icon(Icons.dinner_dining_outlined)
            ),
            label: 'Recepie',
          ),
          BottomNavigationBarItem(
            icon: Container(
                decoration: BoxDecoration(
                    color: index==2?Colors.green:Colors.transparent,
                    borderRadius: BorderRadius.circular(20)
                ),

                padding: const EdgeInsets.only(right: 20,left: 20,top: 5,bottom: 5),
                child: const Icon(Icons.person)
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: index,

        onTap: (i){
          setState((){
            index=i;
          });
        },
      ),
    );
  }
}
