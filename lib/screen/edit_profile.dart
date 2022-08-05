import 'package:flutter/material.dart';
import 'package:grocery_shop/design/custom_text.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const CustomText(
            text: 'Edit profile',
            clr: Colors.black,
            fw: FontWeight.bold,
            fs: 25),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 50, bottom: 50),
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(color: Colors.black, blurRadius: 5)
                  ],
                  color: Colors.grey,
                  shape: BoxShape.circle,
                  border: Border.all(width: 5, color: Colors.white)),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    right: 80,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.white),
                          boxShadow: const [
                            BoxShadow(color: Colors.black, blurRadius: 5)
                          ],
                          color: Colors.deepOrange,
                          shape: BoxShape.circle),
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(Icons.edit),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 25, left: 25, bottom: 10),
                        child: TextFormField(
                          maxLength: 20,
                          decoration: InputDecoration(
                              label: const CustomText(
                                  text: 'My Phone',
                                  clr: Colors.blue,
                                  fw: FontWeight.normal,
                                  fs: 16),
                              prefixIcon: const Icon(
                                Icons.phone_android,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 25, left: 25, bottom: 10),
                        child: TextFormField(
                          maxLength: 20,
                          decoration: InputDecoration(
                              label: const CustomText(
                                  text: 'Email',
                                  clr: Colors.blue,
                                  fw: FontWeight.normal,
                                  fs: 16),
                              prefixIcon: const Icon(
                                Icons.alternate_email,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 25, left: 25, bottom: 10),
                        child: TextFormField(
                          maxLength: 40,
                          decoration: InputDecoration(
                              label: const CustomText(
                                  text: 'Full Name',
                                  clr: Colors.blue,
                                  fw: FontWeight.normal,
                                  fs: 16),
                              prefixIcon: const Icon(
                                Icons.alternate_email,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 25, left: 25, bottom: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                              label: const CustomText(
                                  text: 'Password',
                                  clr: Colors.blue,
                                  fw: FontWeight.normal,
                                  fs: 16),
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      )),
                ],
              ))
        ],
      ),
    );
  }
}
