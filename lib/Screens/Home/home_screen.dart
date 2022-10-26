import 'package:flutter/material.dart';
import 'package:websiteinflutter/Screens/Components/appbar.dart';
import 'package:websiteinflutter/Screens/Components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // TODO This size will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CustomAppBar(),
            Spacer(),
            Body(),
            Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}
