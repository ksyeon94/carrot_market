import 'package:carrot_market_ui/models/icon_menu.dart';
import 'package:carrot_market_ui/screens/my_carrot/components/card_icon_menu.dart';
import 'package:carrot_market_ui/screens/my_carrot/components/my_carrot_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('나의당근'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
        bottom: const PreferredSize(
            child: Divider(
              thickness: 0.5,
              height: 0.5,
              color: Colors.grey,
            ),
            preferredSize: Size.fromHeight(0.5)),
      ),
      body: Column(children: [MyCarrotHeader(),CardIconMenu(iconMenuList: iconMenu1)])
    );
  }
}
