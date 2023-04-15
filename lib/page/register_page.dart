import 'package:flutter/material.dart';
import 'package:tugas_pbm_pertemuan_6/page/home_page.dart';
import 'package:tugas_pbm_pertemuan_6/page/login_page.dart';

String username = "";
String password = "";

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => RegisterPage();
}

class RegisterPage extends State<Register> {
  List<String> labelStr = ["Username", "Email", "Password"];
  List<Widget> widgets = [];

  RegisterPage() {
    for (int i = 0; i < labelStr.length; i++) {
      widgets.add(fieldDaftar(labelStr[i]));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Color(0xffffffff),
          child: Container(
            margin: EdgeInsets.only(top: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: [Image.asset("assets/bmi2.jpg")],
                ),
                const Text(
                  "SIGN UP",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(231, 111, 183, 228),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Container(
                          padding: EdgeInsets.only(bottom: 10),
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: widgets,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Material(
                  borderRadius: BorderRadius.circular(25),
                  elevation: 3,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.73,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color.fromARGB(231, 111, 183, 228)),
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromARGB(231, 111, 183, 228),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return HomePage();
                          }));
                        },
                        child: const Center(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xffffffff),
                                shadows: <Shadow>[
                                  Shadow(
                                      color: Color.fromARGB(64, 0, 0, 0),
                                      offset: Offset(0, 4),
                                      blurRadius: 4)
                                ]),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  width: MediaQuery.of(context).size.width * 0.73,
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Already have an account?",
                              style: TextStyle(fontSize: 15),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return LoginPage();
                                }));
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(231, 111, 183, 228)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextField fieldDaftar(String label) {
    return TextField(
      decoration: InputDecoration(
          labelText: label, labelStyle: TextStyle(color: Color(0xff82916A))),
    );
  }
}
