import 'package:flutter/material.dart';

import 'custom_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text = 'Text';

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
              children: <Widget>[
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  text: 'Upload',
                  icon: const Icon(
                    Icons.upload_file,
                    size: 40,
                  ),
                  color: Colors.blue,
                  onTap: () {
                    setState(() {
                      text = 'Upload';
                    });
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  text: 'Search',
                  icon: const Icon(
                    Icons.search,
                    size: 40,
                  ),
                  color: Colors.purple,
                  onTap: () {
                    setState(() {
                      text = 'Search';
                    });
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  text: 'Settings',
                  icon: const Icon(
                    Icons.settings,
                    size: 40,
                  ),
                  color: Colors.green,
                  onTap: () {
                    setState(() {
                      text = 'Settings';
                    });
                  },
                ),
              ],
            ),
          )),
    );
  }
}
