import 'dart:async';
import 'package:flutter/services.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:ssh/ssh.dart';

Future<void> commandAtHost(
    {required String host,
    required String user,
    required String pw,
    required String command}) async {
  var client = new SSHClient(
    host: host,
    port: 22,
    username: user,
    passwordOrKey: pw,
  );

  try {
    String result = await client.connect();
    if (result == "session_connected") {
      result = await client.startShell(
          ptyType: "xterm",
          callback: (dynamic res) {
            result += res;
          });
      if (result == "shell_started") {
        print(await client.writeToShell(command));
        new Future.delayed(
          const Duration(seconds: 5),
          () async => await client.closeShell(),
        );
      }
    }
    await client.writeToShell(command);
  } on PlatformException catch (e) {
    print('Error: ${e.code}\nError Message: ${e.message}');
  }
}
