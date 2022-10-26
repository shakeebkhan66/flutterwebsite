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
          ),
          FittedBox(
            // Now it just take the required spaces automatically
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: const Color(0xff372930),
                  borderRadius: BorderRadius.circular(40)),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(12),
                    height: 42,
                    width: 42,
                    decoration: const BoxDecoration(
                        color: kPrimaryColor, shape: BoxShape.circle),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color(0xff372930), shape: BoxShape.circle),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Get Started".toUpperCase(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
