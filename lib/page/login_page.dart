import 'package:flutter/material.dart';
import 'package:tugas_pbm_pertemuan_6/page/register_page.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  final FormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Form(
            key: FormKey,
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Color(0xffffffff),
              child: Container(
                margin: EdgeInsets.only(top: 60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    const Text(
                      "Welcome Back!!",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Color.fromARGB(231, 111, 183, 228)),
                    ),
                    Column(
                      children: <Widget>[
                        Image(
                          image: AssetImage("assets/bmi2.jpg"),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Column(
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.only(bottom: 15),
                                  child: TextFormField(
                                      controller: email,
                                      decoration: InputDecoration(
                                          labelText: 'Email',
                                          hintText: "Input your email",
                                          labelStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  231, 161, 158, 158))),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please Enter Your Email';
                                        } else
                                          return null;
                                      }))
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Column(
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.only(bottom: 15),
                                  child: TextFormField(
                                      decoration: InputDecoration(
                                          labelText: 'Password',
                                          hintText: "Input your password",
                                          labelStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  231, 161, 158, 158))),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please Enter Password';
                                        } else {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomePage()));
                                        }
                                      }))
                            ],
                          ),
                        ),
                        Material(
                            borderRadius: BorderRadius.circular(25),
                            elevation: 3,
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.73,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Color.fromARGB(231, 111, 183, 228)),
                              child: Material(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context) {
                                      return HomePage();
                                    }));
                                  },
                                  child: const Center(
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // ElevatedButton(
                              //   child: Text("Login"),
                              //   onPressed: () {
                              //     String email = 'admin';
                              //     String password = '123456';
                              //     if (email.isEmpty || password.isEmpty) {
                              //       showDialog(
                              //           context: context,
                              //           builder: (context) {
                              //             return AlertDialog(
                              //               title: Text("Confirm Register"),
                              //               content: Text("Can't be empty"),
                              //               actions: [
                              //                 TextButton(
                              //                     onPressed: () {
                              //                       Navigator.of(context).pop();
                              //                     },
                              //                     child: Text('Oke'))
                              //               ],
                              //             );
                              //           });
                              //     } else if (email != email && password != password) {
                              //       showDialog(
                              //           context: context,
                              //           builder: (context) {
                              //             return AlertDialog(
                              //               title: Text("Confirm Register"),
                              //               content: Text("Your datta is incorrect"),
                              //               actions: [
                              //                 ElevatedButton(
                              //                     onPressed: () {
                              //                       Navigator.of(context).pop();
                              //                     },
                              //                     child: Text('Oke'))
                              //               ],
                              //             );
                              //           });
                              //     } else
                              //       return null;
                              //   },
                            )) // )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      width: MediaQuery.of(context).size.width * 0.73,
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Don't Have an Account? ",
                                  style: TextStyle(fontSize: 15),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context) {
                                      return Register();
                                    }));
                                  },
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color:
                                            Color.fromARGB(231, 111, 183, 228)),
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
        ));
  }
}

//   TextFormField fieldMasuk(String label) {
//     return TextFormField(
//       decoration: InputDecoration(
//           labelText: label,
//           labelStyle: TextStyle(color: Color.fromARGB(231, 111, 183, 228))),
//       validator: (value) {
//         if (value == null || value.isEmpty) {
//           return 'Please Enter Email';
//         }
//       },
//     );
//   }
// }