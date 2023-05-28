import 'package:flutter/material.dart';
import 'package:yopay/model/constants.dart';
import 'package:yopay/model/product.dart';

import 'description.dart';
import 'product_title_with_image.dart';

class BodyDetails extends StatelessWidget {
  final Product product;

  const BodyDetails({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.16,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  // height: 500,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(227, 237, 242, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Description(product: product),
                      const SizedBox(height: kDefaultPadding / 2),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
