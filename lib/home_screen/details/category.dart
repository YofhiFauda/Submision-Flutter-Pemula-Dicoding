import 'package:flutter/material.dart';
import 'package:yopay/model/constants.dart';

// We need statefull widget because we are gonna change some state on our category
class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<Category> {
  // membuat list item yang akan di pilih
  int selectedIndex = 0;
  List categories = ['All', 'Cookies', 'Cookies Cake', 'Ice Cream'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              left: kDefaultPadding,
              //  menambahkan extra 20 padding kanan
              right: index == categories.length - 1 ? kDefaultPadding : 0,
            ),
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            decoration: BoxDecoration(
              color: index == selectedIndex
                  ? Colors.white.withOpacity(0.4)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              categories[index],
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
