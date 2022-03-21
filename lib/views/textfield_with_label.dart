import 'package:flutter/material.dart';

class TextFieldWithLabel extends StatelessWidget {
  final String label;
  TextFieldWithLabel(this.label);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.grey, fontSize: 18),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
            child: TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey)),
              border: OutlineInputBorder()),
        ))
      ],
    );
  }
}
