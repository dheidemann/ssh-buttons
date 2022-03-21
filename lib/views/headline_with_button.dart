import 'package:flutter/material.dart';

class HeadlineWithButton extends StatelessWidget {
  final String text;
  final Icon icon;
  final VoidCallback onPressed;
  HeadlineWithButton(this.text, this.icon, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        Spacer(),
        IconButton(
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
            onPressed: onPressed,
            icon: icon)
      ],
    );
  }
}
