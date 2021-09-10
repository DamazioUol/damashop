import 'package:damashop/components/drawer/drawers.dart';
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
          "Dama Shopping",
          style: TextStyle(
            color: Colors.amber,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.amber),
      ),
      drawer: DrawerComponent(),
      body: Container(
        color: Colors.amber,
        child: Container(
          color: Colors.white,
          margin: EdgeInsets.all(15),
          child: ListView(
            children: [
              _body(),
            ],
          ),
        ),
      ),
    );
  }
}

_body() {
  return Image(
    image: AssetImage('assets/produtos/guidao_oxxy.jpg'),
  );
}
