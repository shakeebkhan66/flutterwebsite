import 'package:flutter/material.dart';
import 'package:websiteinflutter/Screens/Constants/constant.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Burger".toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .headline1
                ?.copyWith(color: kTextColor, fontWeight: FontWeight.bold),
          ),
          Text(
              "In publishing and graphic design, Lorem ipsum\n"
                  " is a placeholder text commonly used to demonstrate\n"
                  "the visual form of a document or a typeface without\n"
                  " relying on meaningful content",
            style: TextStyle(fontSize: 21, color: kTextColor.withOpacity(0.34)),
          )
        ],
      ),
    );
  }
}
