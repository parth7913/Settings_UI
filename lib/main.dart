import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outcaster/screen/setting/view/isettingsScreen.dart';
import 'package:outcaster/screen/setting/view/settingScreen.dart';

void main() {
  runApp(
    Platform.isAndroid ? android() : ios(),
  );
}

Widget ios() {
  return CupertinoApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => iSettings(),
    },
  );
}

Widget android() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => Settings(),
    },
  );
}
