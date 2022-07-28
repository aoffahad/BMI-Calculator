import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _value = 165;
  int _weightnum = 60;
  int _age = 25;
  bool isMale = true;
  bool isFemale = false;
  String? result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff0C1234),
        title: Text("BMI Calculator"),
        leading: Icon(Icons.menu),
      ),
      backgroundColor: Color(0xff0C1234),
      body: Column(
        children: [
          //:::::::::::::::::::::::::::::::::: 1st Card:::::::::::::::::::::
          Expanded(
              flex: 3,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                  ),
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isMale = true;
                                isFemale = false;
                              });
                            },
                            child: Container(
                              color: Color(0xff272A4E),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.male,
                                    size: 50,
                                    color: isMale == true
                                        ? Colors.teal
                                        : Colors.white,
                                  ),
                                  Text(
                                    "Male",
                                    style: TextStyle(color: Colors.white54),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 3,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isMale = false;
                                isFemale = true;
                              });
                            },
                            child: Container(
                              color: Color(0xff272A4E),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.female,
                                    size: 50,
                                    color: isFemale == true
                                        ? Colors.teal
                                        : Colors.white,
                                  ),
                                  Text(
                                    "Female",
                                    style: TextStyle(color: Colors.white54),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              )),
          SizedBox(
            height: 10,
          ),
          //:::::::::::::::::::::::::::::::::: 2nd Card:::::::::::::::::::::
          Expanded(
              flex: 3,
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  color: Color(0xff272A4E),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "$_value",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            "cm",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ],
                      ),
                      Slider(
                          value: _value.toDouble(),
                          min: 100.0,
                          max: 400.0,
                          divisions: 300,
                          activeColor: Colors.white,
                          inactiveColor: Colors.grey,
                          thumbColor: Colors.pink,
                          // label: 'Set volume value',
                          onChanged: (double newValue) {
                            setState(() {
                              _value = newValue.round();
                            });
                          },
                          semanticFormatterCallback: (double newValue) {
                            return '${newValue.round()} dollars';
                          })
                    ],
                  ))),
          SizedBox(
            height: 10,
          ),
          //:::::::::::::::::::::::::::::::::: 3rd Card:::::::::::::::::::::
          Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.all(15),
                child: Row(
                  children: [
                    //:::::::::::::::::::::::::::::: Card 3.1
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.only(top: 10),
                      color: Color(0xff272A4E),
                      child: Column(
                        children: [
                          Text(
                            "Weight",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          Text(
                            "$_weightnum",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    _weightnum--;
                                  });
                                },
                                child: CircleAvatar(
                                  maxRadius: 20,
                                  child: Icon(Icons.minimize_outlined),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    _weightnum++;
                                  });
                                },
                                child: CircleAvatar(
                                  child: Icon(Icons.add),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    //:::::::::::::::::::::::::::::: Card 3.2
                    Expanded(
                        child: Container(
                      color: Color(0xff272A4E),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.only(top: 10),
                            color: Color(0xff272A4E),
                            child: Column(
                              children: [
                                Text(
                                  "Age",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                Text(
                                  "$_age",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          _age--;
                                        });
                                      },
                                      child: CircleAvatar(
                                        maxRadius: 20,
                                        child: Icon(Icons.minimize_outlined),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          _age++;
                                        });
                                      },
                                      child: CircleAvatar(
                                        maxRadius: 20,
                                        child: Icon(Icons.add),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )),
                          SizedBox(
                            width: 10,
                          ),
                          // Expanded(
                          //     child: Container(
                          //   color: Color(0xff272A4E),
                          // )),
                        ],
                      ),
                    )),
                  ],
                ),
              )),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              var bmi = _weightnum / (_value * _value) * 10000;
              print("Your BMI = $bmi");
              if (bmi < 18.5) {
                result = "You are Underweight";
              } else if (bmi < 25) {
                result = "You are Normal";
              } else if (bmi < 40) {
                result = "You are Overweight";
              } else {
                result = "You are Obese";
              }

              showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      backgroundColor: Colors.transparent,
                      child: Stack(
                        children: [
                          Container(
                            height: 300,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xff272A4E),
                              borderRadius: BorderRadius.circular(17),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                      child: Text("BMI Calculator",
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.pinkAccent))),
                                  Text("Your Weight = ${_weightnum}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.white)),
                                  Text("Your Height = ${_value}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.white)),
                                  Text("Your Age = ${_weightnum}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.white)),
                                  Text("Your Body Mass Index(BMI) = ${bmi}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.white)),
                                  Text("Suggestion = ${result}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Color.fromARGB(
                                              255, 213, 228, 8))),
                                  Center(
                                    child: ElevatedButton(
                                      child: Text(
                                        "Recalculate",
                                        style: TextStyle(),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            },
            child: Container(
              height: 80,
              width: double.infinity,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.pink,
              ),
              child: Center(
                  child: Text(
                "CALCULATE",
                style: TextStyle(color: Colors.white, fontSize: 30),
              )),
            ),
          )
        ],
      ),
    );
  }
}
