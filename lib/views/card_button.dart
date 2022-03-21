import 'package:flutter/material.dart';
import 'package:ssh_buttons/services/ssh_session.dart';

class CardButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  CardButton(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          TextButton(
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  textStyle: const TextStyle(fontSize: 20),
                  fixedSize: Size.fromHeight(60)),
              onPressed: onPressed,
              child: Text(text))
        ],
      ),
    );
  }
}
