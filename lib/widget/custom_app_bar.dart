import 'package:flutter/material.dart';
import 'package:grocery_shop/design/custom_text.dart';
import 'package:grocery_shop/model/value_change.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);
  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {


  @override
  Widget build(BuildContext context) {
    final provide = Provider.of<ValueChange>(context,listen: true);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(left: 15,right: 15),
            child: CustomText(text: 'Hand picked fresh items only for you!', clr: Colors.black, fw: FontWeight.bold, fs: 20),
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            children: [
              const Icon(Icons.notifications_none),
              Switch(
                inactiveThumbImage: const NetworkImage('https://media.istockphoto.com/vectors/sun-icon-vector-id992367156'),
                activeThumbImage: const NetworkImage('https://t3.ftcdn.net/jpg/01/65/47/92/360_F_165479250_xhiSVoJOhKS9BbptDqqVv39YotMi3hGq.jpg'),
                  value: provide.darkMode,
                  onChanged: (val){
                    setState((){
                      provide.changeMode();
                    });
                  }
              )
            ],
          ),
        )
      ],
    );
  }
}
