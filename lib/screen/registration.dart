import 'package:flutter/material.dart';
import 'package:grocery_shop/design/custom_text.dart';
import 'package:grocery_shop/screen/login_page.dart';

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            flex:2,
            child: Container(
              margin: const EdgeInsets.only(left: 20,right: 20,top: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage('https://img.freepik.com/premium-vector/working-from-home-stay-home-stay-safe-social-distancing_134553-287.jpg?w=2000')
                )
              ),
            )
          ),
          Expanded(
            flex:3,
            child: Container(
              padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  const CustomText(text: 'Welcome to Registration Page', clr: Colors.deepOrange, fw: FontWeight.bold, fs: 25),
                  const SizedBox(height: 10,),
                  const CustomText(text: 'Please write correct information', clr: Colors.lightBlue, fw: FontWeight.normal, fs: 20),
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
                     onPressed: (){},
                     child: const Text('Continue')
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
                const CustomText(text: 'Already have an account?  ', clr: Colors.lightBlue, fw: FontWeight.normal, fs: 15),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginPage(),));
                  },
                  child: const CustomText(text: 'Login', clr: Colors.deepOrange, fw: FontWeight.bold, fs: 15)),
              ],
            )
          ),
        ],
      )
    );
  }
}
