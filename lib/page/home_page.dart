import 'dart:ffi';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bbController = TextEditingController();
  var tbController = TextEditingController();
  double? rresult;
  String? status;

  var bgColor = Colors.pink[200];

  void calculatorBMI() {
    double tinggi = double.parse(tbController.text) / 100;
    double berat = double.parse(bbController.text);

    double totaltinggi = tinggi * tinggi;
    double result = berat / totaltinggi;
    rresult = result;

    setState(() {
      if (rresult! < 18) {
        status = 'UNDERWEIGHT';
      } else if (rresult! < 26) {
        status = "NORMAL";
      } else {
        status = "OVERWEIGHT";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Body Mask Index Calculator')),
          backgroundColor: Color.fromARGB(255, 141, 202, 246),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/bmi2.jpg")),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: bbController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Weight (kg)",
                      hintText: "Enter Your Weight"),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: tbController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Height (cm)",
                      hintText: "Enter Your Height"),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  onPressed: calculatorBMI,
                  child: Text(
                    'Enter Value',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                rresult == null ? "Result" : "${rresult}",
                style: new TextStyle(),
              ),
              Text(
                "Value : $status",
                style: new TextStyle(),
              )

            ]));
  }
}
