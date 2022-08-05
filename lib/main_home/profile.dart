import 'package:flutter/material.dart';
import 'package:grocery_shop/design/custom_text.dart';
import 'package:grocery_shop/screen/edit_profile.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const CustomText(
            text: 'PROFILE', clr: Colors.black, fw: FontWeight.bold, fs: 25),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const EditProfile(),
                ));
              },
              child: const Icon(
                Icons.settings_applications,
                color: Colors.white,
                size: 35,
                shadows: [Shadow(color: Colors.black, blurRadius: 20)],
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      top: 70, left: 15, right: 15, bottom: 20),
                  padding: const EdgeInsets.only(bottom: 30),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      CustomText(
                          text: 'Nazmul Khan',
                          clr: Colors.black,
                          fw: FontWeight.bold,
                          fs: 25),
                      CustomText(
                          text: 'Log Out',
                          clr: Colors.blue,
                          fw: FontWeight.bold,
                          fs: 20),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 110),
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(color: Colors.black, blurRadius: 5)
                      ],
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      border: Border.all(width: 5, color: Colors.white)),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, bottom: 5),
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                blurRadius: 5)
                          ]),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.5),
                                      blurRadius: 5)
                                ],
                                color: Colors.deepOrange,
                                shape: BoxShape.circle),
                            child: const Icon(
                              Icons.history_toggle_off_rounded,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const CustomText(
                              text: 'Order history',
                              clr: Colors.black,
                              fw: FontWeight.bold,
                              fs: 15)
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, bottom: 5),
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                blurRadius: 5)
                          ]),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.5),
                                      blurRadius: 5)
                                ],
                                color: Colors.deepOrange,
                                shape: BoxShape.circle),
                            child: const Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const CustomText(
                              text: 'Delivery Address',
                              clr: Colors.black,
                              fw: FontWeight.bold,
                              fs: 15)
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, bottom: 5),
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                blurRadius: 5)
                          ]),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.5),
                                      blurRadius: 5)
                                ],
                                color: Colors.deepOrange,
                                shape: BoxShape.circle),
                            child: const Icon(
                              Icons.credit_card,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const CustomText(
                              text: 'Cards & Payments',
                              clr: Colors.black,
                              fw: FontWeight.bold,
                              fs: 15)
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, bottom: 5),
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                blurRadius: 5)
                          ]),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.5),
                                      blurRadius: 5)
                                ],
                                color: Colors.deepOrange,
                                shape: BoxShape.circle),
                            child: const Icon(
                              Icons.center_focus_strong_rounded,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const CustomText(
                              text: 'Tracking my order',
                              clr: Colors.black,
                              fw: FontWeight.bold,
                              fs: 15)
                        ],
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
