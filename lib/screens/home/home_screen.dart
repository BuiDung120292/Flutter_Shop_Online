// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import './components/body.dart';
import '/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          size: 25,
        ),
        color: kTextColor,
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 25,
          ),
          color: kTextColor,
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            "assets/icons/cart.png",
            height: 25,
            color: kTextColor,
          ),
        ),
        const SizedBox(
          width: kDefaultPaddin / 2,
        )
      ],
    );
  }
}
