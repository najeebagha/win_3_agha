import 'dart:io';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

import 'koyla.dart';

void main() {
  runApp(const MyApp());

  if (Platform.isWindows) {
    doWhenWindowReady(() {
      const initialSize = Size(360, 720);
      appWindow.minSize = initialSize;
      appWindow.size = initialSize;
      appWindow.alignment = Alignment.topRight;
      appWindow.show();
    });
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark(useMaterial3: true),
      home: Scaffold(
          drawer: Drawer(
            child: Column(
              children: [
                DrawerHeader(
                    child: Container(
                  color: Colors.deepPurple,
                ))
              ],
            ),
          ),
          appBar: AppBar(
            centerTitle: true,
            title: const Text("WellCome Agha"),
          ),
          body: const Koyla()),
    );
  }
}
