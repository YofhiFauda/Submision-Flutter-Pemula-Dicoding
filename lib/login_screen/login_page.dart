import 'package:flutter/material.dart';
import 'package:yopay/login_screen/sign_in.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(78, 125, 150, 1),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height * 0.600,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/background.png',
                    height: size.height * 0.6,
                    width: 400,
                  ),
                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              SizedBox(
                  child: Text('Madam',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: size.height * 0.06))),
              SizedBox(
                  child: Text(' Shop',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 243, 164, 0),
                          fontWeight: FontWeight.w900,
                          fontSize: size.height * 0.06))),
            ]),
            Column(
              children: <Widget>[
                SizedBox(
                  child: Container(
                      margin: EdgeInsets.all(
                          MediaQuery.of(context).size.width / 40),
                      width: 300,
                      height: size.height * 0.09,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const SignIn();
                          })); // validasi ketika button login di klik akan menuju ke menu Home
                        },

                        child: Text(
                            //style untuk mengatur pada Button Login
                            "Start",
                            style: TextStyle(
                                color: const Color.fromRGBO(78, 125, 150, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: size.height / 25)),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(
                                60))), //Boder Radius Button Login
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width / 80),
                      )),
                ),
              ],
            ),
            SizedBox(
              // Size box untuk Mengatur Field email, password, button login, sign up, forgot password Untuk Ke posisi Bawah
              height: size.height / 200,
            ),
            SizedBox(
                child: Text('By signing up you agree to the',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: size.height / 60))),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              InkWell(
                  onTap: () => {},
                  child: Text(
                    'Terms of Service',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        decoration: TextDecoration.underline,
                        fontSize: size.height / 60),
                  )),
              Text(' and ',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: size.height / 60)),
              InkWell(
                  onTap: () => {},
                  child: Text(
                    'Privacy Policy',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        decoration: TextDecoration.underline,
                        fontSize: size.height / 60),
                  )),
            ]),
          ],
        ),
      ),
    );
  }
}
