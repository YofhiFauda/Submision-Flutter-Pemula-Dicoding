import 'package:flutter/material.dart';
import 'package:yopay/model/constants.dart';

import 'package:yopay/model/product.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    required this.itemIndex,
    required this.product,
    required this.press,
  }) : super(key: key);

  final int itemIndex;
  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    //  Memberikan Total Tinggi dan Lebar Card
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      // Membuat Card
      // Dengan BoxDecoration Blue color and Yellow Color
      height: 160,
      child: InkWell(
        onTap: () {
          press();
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            //  background
            Container(
              height: 136,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: itemIndex.isEven ? kBlueColor : kSecondaryColor,
                boxShadow: const [kDefaultShadow],
              ),
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            // our product image
            Positioned(
              top: 0,
              right: 0,
              child: Hero(
                tag: '${product.id}',
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 160,
                  // gambar persegi dengan menambahkan 20 + 20 padding itu sebabnya lebarnya 200
                  width: 200,
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            // Product title and price
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                // memberikan gambar 200 width, itulah kenapa gambar - 200
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text(
                        product.title,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // it use the available space
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 1.5,
                        vertical: kDefaultPadding / 4,
                      ),
                      decoration: const BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(22),
                          topRight: Radius.circular(22),
                        ),
                      ),
                      child: Text(
                        product.price,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
