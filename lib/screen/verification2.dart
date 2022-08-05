import 'package:flutter/material.dart';
import 'package:grocery_shop/design/custom_text.dart';
import 'package:grocery_shop/screen/splash_screen.dart';

class Verification2 extends StatelessWidget {
  const Verification2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.amberAccent[100],
      body: Container(
        padding: const EdgeInsets.only(top: 40,right: 25,left: 25),
        child: Column(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.yellow,
              radius: 80,
              child: Icon(Icons.email,size: 100,shadows: [
                Shadow(
                    color: Colors.black,
                    blurRadius: 80,
                    offset: Offset(20, 5)
                )
              ]),
            ),
            const SizedBox(height: 30,),
            const CustomText(text: 'OTP VERIFICATION', clr: Colors.black, fw: FontWeight.bold, fs: 25),
            const SizedBox(height: 10,),
            CustomText(text: 'Please Enter OTP', clr: Colors.black.withOpacity(0.5), fw: FontWeight.bold, fs: 20),
            const SizedBox(height: 30,),
            Row(
              children: [
                Expanded(
                    flex:10,
                    child: Center(
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Enter your OTP',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                        )
                    )
                )
              ],
            ),
            const SizedBox(height: 40,),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SplashScreen(),));
                },
                child: const Text('Verify')
            ),


          ],
        ),
      ),
    );
  }
}
