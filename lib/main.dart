import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'modules/home.dart';

void main() => runApp(SSHButtons());

class SSHButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return MaterialApp(
      title: 'SSH Buttons',
      themeMode: ThemeMode.light,
      home: Home(),
    );
  }
}
