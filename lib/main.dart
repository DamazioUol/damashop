import 'package:flutter/material.dart';

import 'pages/home-page.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
