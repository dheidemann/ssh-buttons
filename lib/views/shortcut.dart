import 'package:flutter/material.dart';
import 'package:ssh_buttons/services/ssh_session.dart';
import 'card_button.dart';

class Shortcut extends StatefulWidget {
  final String text;
  final String host;
  final String user;
  final String pw;
  final String command;
  Shortcut(this.text, this.host, this.user, this.pw, this.command);
  @override
  State<Shortcut> createState() => _ShortcutState();
}

class _ShortcutState extends State<Shortcut> {
  bool _isLoading = false;
  bool _successfullyExecuted = false;

  void _startLoading() async {
    setState(() {
      _isLoading = true;
    });
    if (await commandAtHost(
            host: widget.host,
            user: widget.user,
            pw: widget.pw,
            command: widget.command) ==
        true) {
      setState(() {
        _successfullyExecuted = true;
      });
    }
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CardButton(widget.text, () {
          _startLoading();
        }),
        _isLoading
            ? CircularProgressIndicator(color: Colors.black)
            : Container(
                width: 1,
              ), // temporary workaround
      ],
    );
  }
}
