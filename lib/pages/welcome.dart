// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class Welcome extends StatelessWidget {
  // ignore: use_super_parameters
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[300],
          title: Text(
            "Welcome",
            style: TextStyle(fontSize: 30, fontFamily: "myfont", fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/Singup");
                },
                
                style: ButtonStyle(
                  backgroundColor:
                      // ignore: deprecated_member_use
                      MaterialStateProperty.all(const Color.fromARGB(255, 146, 11, 169)),
                  // ignore: deprecated_member_use
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 77, vertical: 13)),
                  // ignore: deprecated_member_use
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: Text(
                  "SIGNUP",
                  style: TextStyle(fontSize: 17, color: Colors.grey[850]),
                ),),
                  SizedBox(
                height: 22,
              ),
              
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/b");
                },
                
                style: ButtonStyle(
                  // ignore: deprecated_member_use
                  backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 96, 4, 112)),
                  // ignore: deprecated_member_use
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 79, vertical: 10)),
                  // ignore: deprecated_member_use
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: Text(
                  "login",
                  style: TextStyle(fontSize: 24),
                ),
              ),
                SizedBox(
                height: 22,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/i");
                },
                
                style: ButtonStyle(
                  // ignore: deprecated_member_use
                  backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 96, 4, 112)),
                  // ignore: deprecated_member_use
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 79, vertical: 10)),
                  // ignore: deprecated_member_use
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: Text(
                  "items",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              
            ],
          ),
        ));
  }
}
