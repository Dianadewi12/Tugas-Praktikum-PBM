import 'package:flutter/material.dart';
import 'package:tugas_pbm_pertemuan_6/page/home_page.dart';
import 'package:tugas_pbm_pertemuan_6/page/login_page.dart';
import 'package:tugas_pbm_pertemuan_6/page/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/login": (context) => LoginPage(),
        "/register": (context) => Register(),
        "/home": (context) => HomePage()
        // TODO : Tambahkan route lain
      },
      initialRoute: "/register",
    );
  }
}
