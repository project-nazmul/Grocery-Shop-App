import 'package:flutter/material.dart';
import 'package:grocery_shop/design/custom_text.dart';
import 'package:grocery_shop/screen/verification2.dart';

class Verification1 extends StatelessWidget {
  const Verification1({Key? key}) : super(key: key);

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
              backgroundColor: Colors.deepOrange,
              radius: 80,
              child: Icon(Icons.airplanemode_active,size: 100,shadows: [
                Shadow(
                  color: Colors.black,
                  blurRadius: 80,
                  offset: Offset(20, 5)
                )
              ]),
            ),
            const SizedBox(height: 30,),
            const CustomText(text: 'VERIFY YOUR PHONE NUMBER', clr: Colors.black, fw: FontWeight.bold, fs: 25),
            const SizedBox(height: 10,),
            CustomText(text: 'Enter Phone Number', clr: Colors.black.withOpacity(0.5), fw: FontWeight.bold, fs: 20),
            const SizedBox(height: 30,),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Container(
                      height: 20,
                      width: 30,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                            image: NetworkImage('https://media.istockphoto.com/vectors/peoples-republic-of-bangladesh-asia-flag-vector-id1334715594?b=1&k=20&m=1334715594&s=170667a&w=0&h=eklim5Crb3KSEQDCXMip5YNl44lxIBhZ4SRlKtyhnJw='))
                      ),
                    ),
                  ),
                ),
                const Expanded(flex:2,child: Center(child: Text('+880'))),
                Expanded(
                  flex:10,
                  child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Phone number',
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Verification2(),));
              },
              child: const Text('Send OTP')
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: const Text('Back')
            ),


          ],
        ),
      ),
    );
  }
}
