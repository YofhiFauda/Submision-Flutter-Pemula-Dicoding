import 'package:flutter/material.dart';
import 'package:yopay/home_screen/home_page.dart';
import 'package:yopay/login_screen/sign_up.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
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
              // ignore: prefer_const_literals_to_create_immutables
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
                            child: Text(' In',
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 255, 194, 72),
                                    fontWeight: FontWeight.w900,
                                    fontSize: size.height * 0.07))),
                      ]),
                  SizedBox(
                    height: size.height / 80,
                  ),
                  Container(
                    margin: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.02),
                    child: Column(
                      children: <Widget>[
                        Material(
                          color: const Color.fromARGB(255, 250, 250, 250),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                          elevation: 2,
                          child: SizedBox(
                            height: size.height * 0.09,
                            width: 400,
                            child: Center(
                              child: TextFormField(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size.height * 0.025,
                                ),
                                decoration: InputDecoration(
                                    hintText: 'Email',
                                    hintStyle: TextStyle(
                                        fontSize: size.height * 0.020),
                                    border: InputBorder.none,
                                    contentPadding: const EdgeInsets.all(16)),
                                controller: emailController,
                                keyboardType: TextInputType.emailAddress,
                              ),
                            ),
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Material(
                                color: const Color.fromARGB(255, 250, 250, 250),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                        10)), //Border radius pada Field Password
                                elevation: 2,
                                child: SizedBox(
                                  height: size.height * 0.09,
                                  width: 400,
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Center(
                                            child: TextFormField(
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: size.height * 0.020),
                                          decoration: const InputDecoration(
                                              hintText: 'Password',
                                              border: InputBorder.none,
                                              contentPadding:
                                                  EdgeInsets.all(16)),
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
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          height: size.height * 0.09,
                          width: 400,
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const HomePage();
                              }));
                            },
                            child: Text(
                                //style untuk mengatur pada Button Login
                                "Login",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.height * 0.035)),
                            color: Color.fromARGB(255, 32, 152, 204),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    10))), //Boder Radius Button Login
                            padding: EdgeInsets.all(size.height * 0.02),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don't have an Account ?",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: size.height / 60),
                      ),
                      MaterialButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const SignUp();
                            }));
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize: size.height / 60),
                          )),
                    ],
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
