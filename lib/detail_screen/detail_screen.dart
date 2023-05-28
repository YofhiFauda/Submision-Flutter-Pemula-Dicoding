import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yopay/model/constants.dart';
import 'package:yopay/model/product.dart';
import 'package:yopay/detail_screen/details/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).devicePixelRatio;
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: BodyDetails(product: product),
      //button Buy
      bottomNavigationBar: BottomAppBar(
        color: kBackgroundColor,
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding,
              horizontal: kDefaultPadding,
            ),
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: kDefaultPadding),
                  height: 50,
                  width: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: product.color,
                    ),
                  ),
                  child: IconButton(
                    icon: SvgPicture.asset(
                      "assets/icons/add_to_cart.svg",
                      color: product.color,
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 50,
                    // ignore: deprecated_member_use
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      color: product.color,
                      onPressed: () {},
                      child: Text(
                        "Buy  Now".toUpperCase(),
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        elevation: 10,
      ),
    );
  }

//App bar pada Details
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/Back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.ios_share),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {},
        ),
        const SizedBox(width: kDefaultPadding / 2)
      ],
    );
  }
}
