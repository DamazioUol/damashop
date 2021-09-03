import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "DamaShopping",
          style: TextStyle(
            color: Colors.amber,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.amber),
      ),
      drawer: Container(
        color: Colors.amber,
      ),
      body: _body(),
    );
  }
}

_body() {
  return Container(
    color: Colors.amber,
    child: Center(
      child: Image(
        image: AssetImage('assets/produtos/guidao_oxxy.jpg'),
      ),
    ),
  );
}
