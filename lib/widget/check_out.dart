import 'package:flutter/material.dart';
import 'package:yopay/model/constants.dart';

import 'card_checkout.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  State<CheckOut> createState() => CheckOutState();
}

class CheckOutState extends State<CheckOut> {
  int count = 1;
  int count1 = 1;
  int count2 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        leading: IconButton(
          padding: const EdgeInsets.only(left: 5),
          iconSize: 25,
          color: kSecondaryColor,
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Tagihan Pembayaran',
          style: TextStyle(color: Color.fromARGB(178, 0, 0, 0)),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(
              top: 0,
            ),
            child: Column(
              children: [
                cardCheckout(
                  harga: 'Rp. 35.000',
                  image: 'assets/images/cookieclassic.png',
                  nama: 'Cookie Clasic',
                ),
                cardCheckout(
                  harga: 'Rp. 25.000',
                  image: 'assets/images/cookiechoco.png',
                  nama: 'Cookie Choco',
                ),
                cardCheckout(
                  harga: 'Rp. 99.000',
                  image: 'assets/images/green-tea-matcha.png',
                  nama: 'Green Tea Matcha',
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromRGBO(159, 201, 221, 1),
        child: Container(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Total',
                          style: TextStyle(fontSize: 12, color: Colors.black)),
                      const SizedBox(
                        height: 5,
                      ),
                      Text('Rp 250.000',
                          style: TextStyle(fontSize: 25, color: Colors.black)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    child: Center(
                      child: Text('Cek Out',
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                    ),
                    decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(color: kSecondaryColor, spreadRadius: 4),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          height: 90,
          padding: const EdgeInsets.only(
              left: 20.0, right: 10.0, top: 2.0, bottom: 2.0),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: Colors.black26, // Black color with 12% opacity
              ),
            ],
          ),
        ),
        elevation: 12,
      ),
    );
  }
}
