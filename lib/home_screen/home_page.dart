import 'package:flutter/material.dart';
import 'package:yopay/model/constants.dart';
import 'package:yopay/widget/check_out.dart';

import 'details/body.dart';
import 'navigation/sidebar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).devicePixelRatio;
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: buildAppBar(),
      backgroundColor: kPrimaryColor,
      body: const BodyScreens(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const CheckOut();
          }));
        },
        backgroundColor: kTextBurnColor,
        child: const Icon(
          Icons.fastfood,
          size: 20,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      centerTitle: false,
      title: const Text('Dashboard'),
      actions: <Widget>[
        Stack(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.notifications),
              iconSize: 30,
              onPressed: () {},
            ),
            Positioned(
              right: 11,
              top: 11,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(6),
                ),
                constraints: const BoxConstraints(
                  minWidth: 14,
                  minHeight: 14,
                ),
                child: const Text(
                  '8',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
