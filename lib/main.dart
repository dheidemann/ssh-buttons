import 'package:flutter/material.dart';
import 'services/ssh_session.dart';

void main() => runApp(SSHButtons());

class SSHButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SSH Buttons',
      themeMode: ThemeMode.light,
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: TestButton()),
      ),
    );
  }
}

class TestButton extends StatelessWidget {
  const TestButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          commandAtHost(
              host: "192.168.2.103",
              user: "pi",
              pw: "mirror",
              command: 'pm2 restart mm\n');
        },
        child: Text("lets go"));
  }
}
