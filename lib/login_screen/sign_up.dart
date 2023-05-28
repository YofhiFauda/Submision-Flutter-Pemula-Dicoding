import 'package:flutter/material.dart';
import 'package:yopay/login_screen/sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final namaController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final konfimasiController = TextEditingController();
  late bool obscureText;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    obscureText = true;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        key: scaffoldKey,
        body: Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width / 40),
          decoration: const BoxDecoration(
            color: Color.fromRGBO(78, 125, 150, 1),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                            child: Text('Sign',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: size.height * 0.07))),
                        SizedBox(
                            child: Text(' Up',
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 243, 164, 0),
                                    fontWeight: FontWeight.w900,
                                    fontSize: size.height * 0.07))),
                      ]),
                  SizedBox(
                    height: size.height / 80,
                  ),
                  Container(
                      margin: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.005),
                      child: Column(children: <Widget>[
                        Material(
                            color: const Color.fromARGB(255, 250, 250, 250),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            elevation: 2,
                            child: SizedBox(
                              height: size.height * 0.08,
                              width: 400,
                              child: Center(
                                  child: TextFormField(
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: size.height * 0.020),
                                decoration: InputDecoration(
                                    hintText: 'Username',
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(
                                      size.height * 0.03,
                                    )),
                                controller: namaController,
                                keyboardType: TextInputType.emailAddress,
                              )),
                            )),
                      ])),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.005),
                    child: Column(children: <Widget>[
                      Material(
                          color: const Color.fromARGB(255, 250, 250, 250),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                          elevation: 2,
                          child: SizedBox(
                            height: size.height * 0.08,
                            width: 400,
                            child: Center(
                                child: TextFormField(
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size.height * 0.020),
                              decoration: InputDecoration(
                                  hintText: 'Email',
                                  border: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.all(size.height * 0.03)),
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                            )),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          margin: EdgeInsets.all(
                              MediaQuery.of(context).size.width * 0.005),
                          child: Material(
                              color: const Color.fromARGB(255, 250, 250, 250),
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                      10)), //Border radius pada Field Password
                              elevation: 2,
                              child: SizedBox(
                                height: size.height * 0.08,
                                width: 400,
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Center(
                                          child: TextFormField(
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: size.height * 0.020),
                                        decoration: InputDecoration(
                                            hintText: 'Password',
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.all(
                                                size.height * 0.03)),
                                        controller: passwordController,
                                        obscureText: obscureText,
                                      )),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.remove_red_eye,
                                        color: !obscureText
                                            ? Colors.black.withOpacity(0.3)
                                            : Colors.black,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          obscureText = !obscureText;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ))),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          margin: EdgeInsets.all(
                              MediaQuery.of(context).size.width * 0.005),
                          child: Material(
                              color: const Color.fromARGB(255, 250, 250, 250),
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                      10)), //Border radius pada Field Password
                              elevation: 2,
                              child: SizedBox(
                                  child: SizedBox(
                                height: size.height * 0.08,
                                width: 400,
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Center(
                                          child: TextFormField(
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: size.height * 0.020),
                                        decoration: InputDecoration(
                                            hintText: 'Confirm Password',
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.all(
                                                size.height * 0.03)),
                                        controller: konfimasiController,
                                        obscureText: obscureText,
                                      )),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.remove_red_eye,
                                        color: !obscureText
                                            ? Colors.black.withOpacity(0.3)
                                            : Colors.black,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          obscureText = !obscureText;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              )))),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        height: size.height * 0.09,
                        width: 400,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const SignIn();
                            }));
                          },
                          child: Text(
                              //style untuk mengatur pada Button Login
                              "Create",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.height * 0.035)),
                          color: const Color.fromARGB(255, 32, 152, 204),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(
                                  10))), //Boder Radius Button Login
                          padding: EdgeInsets.all(size.height * 0.02),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
