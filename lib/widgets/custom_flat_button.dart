import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String text;
  final VoidCallback onTab;
  const CustomFlatButton({super.key, required this.text, required this.onTab});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: InkWell(
            onTap: onTab,
            child: Text(
              text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )));
  }
}
