import 'package:flutter/material.dart';
import 'package:yopay/model/product.dart';

import 'package:yopay/model/constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //Judul product
        children: <Widget>[
          Text(
            "Cookies",
            style: TextStyle(fontSize: size.height / 40, color: Colors.white),
          ),
          Text(
            product.title,
            style: TextStyle(
              fontSize: size.height / 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: kDefaultPadding / 4),
          Row(
            children: <Widget>[
              //harga product
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Harga\n",
                        style: TextStyle(
                            fontSize: size.height / 45, color: Colors.white)),
                    TextSpan(
                      text: product.price,
                      style: TextStyle(
                          fontSize: size.height / 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: kDefaultPadding * 2),
              Expanded(
                //list harga product
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(
                    product.image,
                    height: size.height * 0.35,
                    width: size.width * 0.4,
                    fit: BoxFit.contain,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
