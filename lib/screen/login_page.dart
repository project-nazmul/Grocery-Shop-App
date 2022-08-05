import 'package:flutter/material.dart';
import 'package:grocery_shop/design/custom_text.dart';
import 'package:grocery_shop/screen/verification1.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 40,bottom: 30),
            child: Center(child: CustomText(text: 'SIGN IN', clr: Colors.black, fw: FontWeight.bold, fs: 25)),
          ),
          Expanded(
            child: Container(

              decoration: const BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                  topLeft: Radius.circular(50)
                )
              ),
              child: Column(
                children: [
                  Expanded(
                      flex:3,
                      child: Container(
                        padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
                        child: Column(
                          children: [
                            const SizedBox(height: 20,),
                            const CustomText(text: 'Welcome to Log In Page', clr: Colors.deepOrange, fw: FontWeight.bold, fs: 25),
                            const SizedBox(height: 10,),
                            CustomText(text: 'Please write correct information', clr: Colors.black.withOpacity(0.3), fw: FontWeight.normal, fs: 20),
                            const SizedBox(height: 20,),
                            TextFormField(

                              decoration: InputDecoration(
                                  label: const Text('Email'),
                                  labelStyle: const TextStyle(color: Colors.deepOrange),
                                  icon: Container(
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          color: Colors.deepOrange,
                                          borderRadius: BorderRadius.circular(5)
                                      ),

                                      child: const Icon(Icons.email_outlined,color: Colors.white,)
                                  )
                              ),
                            ),
                            const SizedBox(height: 10,),
                            TextFormField(

                              decoration: InputDecoration(
                                  label: const Text('Password'),
                                  suffixIcon: const Icon(Icons.visibility),
                                  labelStyle: const TextStyle(color: Colors.deepOrange),
                                  icon: Container(
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          color: Colors.deepOrange,
                                          borderRadius: BorderRadius.circular(5)
                                      ),

                                      child: const Icon(Icons.lock,color: Colors.white,)
                                  )
                              ),
                            ),
                            const SizedBox(height: 35,),
                            ElevatedButton(
                                onPressed: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Verification1(),));
                                },
                                child: const Text('Sign In')
                            ),

                          ],
                        ),
                      )
                  ),
                  Expanded(
                      flex:1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CustomText(text: 'Do not have an account?  ', clr: Colors.lightBlue, fw: FontWeight.normal, fs: 15),
                          InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginPage(),));
                              },
                              child: InkWell(
                                onTap: (){
                                  Navigator.of(context).pop();
                                },
                                child: const CustomText(text: 'Sign Up', clr: Colors.deepOrange, fw: FontWeight.bold, fs: 15))),
                        ],
                      )
                  ),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
