import 'package:flutter/material.dart';

class CustomOnBoardingTile extends StatelessWidget {
  final String imageAddress;
  const CustomOnBoardingTile({super.key, required this.imageAddress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color.fromRGBO(240, 240, 240, 1),
            image: DecorationImage(
                image: AssetImage(imageAddress), fit: BoxFit.fitWidth)),
        width: double.infinity,
        height: 450,
      ),
    );
  }
}
