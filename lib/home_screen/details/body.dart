import 'package:flutter/material.dart';
import 'package:yopay/detail_screen/detail_screen.dart';
import 'package:yopay/model/product.dart';
import 'package:yopay/model/constants.dart';
import 'package:yopay/widget/search_box.dart';

import 'category.dart';
import 'item.dart';

class BodyScreens extends StatelessWidget {
  const BodyScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: kDefaultPadding),
        SearchBox(
          onChanged: (value) {},
        ),
        const SizedBox(height: kDefaultPadding),
        const Category(),
        const SizedBox(height: kDefaultPadding / 2),
        Expanded(
          child: Stack(
            children: <Widget>[
              // backgournd
              Container(
                margin: const EdgeInsets.only(top: 70),
                decoration: const BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
              ListView.builder(
                // product list
                itemCount: product.length,
                itemBuilder: (context, index) => ItemCard(
                  itemIndex: index,
                  product: product[index],
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          product: product[index],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
