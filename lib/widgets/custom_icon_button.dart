import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback onTab;
  const CustomIconButton({super.key, required this.onTab});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(40),
      child: InkWell(
        borderRadius: BorderRadius.circular(40),
        onTap: onTab,
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(224, 255, 133, 1),
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Icon(Icons.arrow_right_alt_outlined, size: 40),
        ),
      ),
    );
  }
}
