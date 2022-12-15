import 'package:flutter/material.dart';
import 'package:cv_gonzales/login.dart';
import 'package:cv_gonzales/signup.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const HomeRoute(),
      '/second': (context) => const SecondRoute(),
      '/third': (context) => const ThirdRoute(),
    },
  )); //MaterialApp
}

class HomeRoute extends StatelessWidget {
  const HomeRoute({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/beach.jpg"), fit: BoxFit.cover)),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.only(top: 150)),
                  Text(
                    "WELCOME!",
                    style: TextStyle(
                        fontFamily: 'Orpheus',
                        color: Colors.blue[800],
                        fontWeight: FontWeight.normal,
                        fontSize: 50),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Login or Sign Up?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.pushNamed(context, '/second');
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(40)),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.pushNamed(context, '/third');
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(40)),
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
