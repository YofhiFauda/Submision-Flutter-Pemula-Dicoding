import 'package:flutter/material.dart';
import 'package:yopay/model/product.dart';

import 'package:yopay/model/constants.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
          top: size.height * 0.04,
          bottom: kDefaultPadding,
          right: kDefaultPadding,
          left: kDefaultPadding),
      child: Text(
        product.description,
        style: TextStyle(
          color: const Color(0xFF4E7D96),
          height: 1.5,
          fontSize: size.height * 0.025,
        ),
      ),
    );
  }
}
