import 'package:flutter/material.dart';
import 'package:ssh_buttons/views/card_button.dart';
import 'package:ssh_buttons/views/column_row_spacer.dart';
import 'package:ssh_buttons/views/headline_with_button.dart';
import 'package:ssh_buttons/views/shortcut.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
          child: ColumnSpacer([
            HeadlineWithButton(
                'Shortcuts', Icon(Icons.add_circle_outline), () {}),
            RowSpacer([
              CardButton('💤', () {}),
              Shortcut(
                  '🍓 🔄', '192.168.2.103', 'pi', 'mirror', 'pm2 restart mm\n')
            ], 10),
            HeadlineWithButton(
                'Devices', Icon(Icons.add_circle_outline), () {}),
          ], 10),
        ),
      )),
    );
  }
}
