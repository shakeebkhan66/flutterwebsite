import 'package:flutter/material.dart';

import '../Constants/constant.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(46),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -2),
              blurRadius: 30,
              color: Colors.black.withOpacity(0.16),
            )
          ]),
      child: Row(
        children: [
          Image.asset(
            "assets/images/logo.png",
            height: 25,
            alignment: Alignment.topCenter,
          ),
          const SizedBox(width: 9),
          Text(
            "Foodi".toUpperCase(),
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          MenuItem(
            title: 'Home',
            press: () {},
          ),
          MenuItem(
            title: 'About',
            press: () {},
          ),
          MenuItem(
            title: 'Pricing',
            press: () {},
          ),
          MenuItem(
            title: 'Contact',
            press: () {},
          ),
          MenuItem(
            title: 'Login',
            press: () {},
          ),
          DefaultButton(
            text: 'Get Started',
            press: () {},
          )
        ],
      ),
    );
  }
}


// TODO Button Class (Extract Widget)
class DefaultButton extends StatelessWidget {
  String? text;
  VoidCallback? press;

  DefaultButton({required this.text, required this.press});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: press,
      color: kPrimaryColor,
      splashColor: kTextColor,
      hoverColor: Colors.amberAccent.withOpacity(0.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Text(
        text!.toUpperCase(),
        style: const TextStyle(fontWeight: FontWeight.w900),
      ),
    );
  }
}

// TODO Menu Item Class (Extract Widget)
class MenuItem extends StatelessWidget {
  String? title;
  VoidCallback? press;

  MenuItem({required this.title, required this.press});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            title!.toUpperCase(),
            style: TextStyle(
                color: kTextColor.withOpacity(0.3),
                fontWeight: FontWeight.bold),
          )),
    );
  }
}
