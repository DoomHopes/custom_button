import 'package:flutter/material.dart';

import 'custom_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Button',
      theme: ThemeData.dark(),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Custom Button'),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                CustomButton(
                  text: 'Upload',
                  icon: Icon(Icons.upload_file),
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomButton(
                  text: 'Search',
                  icon: Icon(Icons.search),
                  color: Colors.purple,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomButton(
                  text: 'Settings',
                  icon: Icon(Icons.settings),
                  color: Colors.green,
                ),
              ],
            ),
          )),
    );
  }
}
