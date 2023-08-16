import 'package:flutter/material.dart';

import '../custom_flat_button.dart';
import '../custom_icon_button.dart';

class CustomButtomBar extends StatelessWidget {
  final VoidCallback nextIconButton;
  final VoidCallback flatSkipButton;
  const CustomButtomBar(
      {super.key, required this.nextIconButton, required this.flatSkipButton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomFlatButton(text: "Skip", onTab: flatSkipButton),
          CustomIconButton(
            onTab: nextIconButton,
          ),
        ],
      ),
    );
  }
}
