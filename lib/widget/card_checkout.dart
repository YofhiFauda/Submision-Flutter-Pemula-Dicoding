import 'package:flutter/material.dart';
import 'package:yopay/model/constants.dart';

class cardCheckout extends StatefulWidget {
  final String nama;
  final String harga;
  final String image;

  const cardCheckout(
      {Key? key, required this.nama, required this.harga, required this.image})
      : super(key: key);
  @override
  State<cardCheckout> createState() => _cardCheckoutState();
}

class _cardCheckoutState extends State<cardCheckout> {
  int count = 1;
  int count1 = 1;
  int count2 = 1;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: Colors.white,
      shadowColor: Colors.black54,
      child: Container(
        padding: EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Image.asset(
                widget.image,
                height: 70,
                fit: BoxFit.fitHeight,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.nama,
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.harga,
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.0,
                              color: kPrimaryColor,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: IconButton(
                              icon: Icon(
                                Icons.remove,
                                size: 12,
                              ),
                              onPressed: () {
                                setState(() {
                                  count--;
                                });
                              }),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: kDefaultPadding / 2),
                          child: Text(
                            // if our item is less  then 10 then  it shows 01 02 like that
                            count.toString().padLeft(2, "0"),
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.0,
                              color: kPrimaryColor,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: IconButton(
                              icon: Icon(
                                Icons.add,
                                size: 12,
                              ),
                              onPressed: () {
                                setState(() {
                                  count++;
                                });
                              }),
                        ),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
