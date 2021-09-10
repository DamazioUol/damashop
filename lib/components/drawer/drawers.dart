import 'package:flutter/material.dart';

class DrawerComponent extends StatefulWidget {
  const DrawerComponent({Key? key}) : super(key: key);

  @override
  _DrawerComponentState createState() => _DrawerComponentState();
}

class _DrawerComponentState extends State<DrawerComponent> {
  double fontSizeTitle = 15;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: [
            _header(),
            _listItens(),
          ],
        ),
      ),
    );
  }

  _header() {
    return UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      accountName: Text(
        "Lucas Damazio",
        style: TextStyle(
          color: Colors.amber,
          fontSize: 18,
        ),
      ),
      accountEmail: Text(
        "lucasdamazio@hotmail.com",
        style: TextStyle(
          color: Colors.amber,
          fontSize: 15,
        ),
      ),
    );
  }

  _titleItem(title) {
    return Text(
      title,
      style: TextStyle(fontSize: this.fontSizeTitle),
    );
  }

  _itemList(IconData icon, String title, Function func) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: _titleItem(title),
      onTap: () => func,
    );
  }

  _listItens() {
    return Column(
      children: [
        _itemList(Icons.photo_library, "Produtos", () => {}),
        _itemList(Icons.help, "Ajuda", () => {}),
        _itemList(Icons.exit_to_app, "Sair", () => {}),
      ],
    );
  }
}
