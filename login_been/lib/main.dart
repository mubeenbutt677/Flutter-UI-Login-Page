// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        children: [
          const Center(
            child: SizedBox(
              height: 100,
              width: 100,
              child: Image(
                  image: NetworkImage(
                      'https://raw.githubusercontent.com/flutter-rus/flutter-rus.github.io/master/images/logo.png')),
            ),
          ),
          const SizedBox(
            height: 40,
          ),

          // ignore: avoid_unnecessary_containers
          const Center(
            child: Text(
              'LOGIN PAGE',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
          ),

          const SizedBox(
            height: 40,
          ),

          // ignore: avoid_unnecessary_containers
          Container(
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                "Email",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            child: SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    hintText: 'abc@example.com',
                    labelText: "Email"),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                "Password",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            child: SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    hintText: 'Password'),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // ignore: avoid_print
          SizedBox(
              width: 140,
              height: 35,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(' Login'),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ))),
              )),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                children: [
                  SizedBox(
                      width: 140,
                      height: 35,
                      child: ElevatedButton(
                        onPressed: () {
                          const Text(' Login');
                        },
                        // ignore: prefer_const_literals_to_create_immutables
                        child: Row(
                          children: const [
                            Center(child: Icon(Icons.facebook)),
                            Text('    Login')
                          ],
                        ),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ))),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 140,
                    height: 35,
                    child: ElevatedButton(
                      onPressed: () {
                        const Text(' Login');
                      },

                      // ignore: prefer_const_literals_to_create_immutables
                      child: Row(
                        children: const [
                          Icon(Icons.g_mobiledata_sharp),
                          Text('    Login'),
                        ],
                      ),

                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "forget your passowrd,?",
            style:
                TextStyle(decoration: TextDecoration.underline, fontSize: 15),
          )
        ],
      )),
    );
  }
}
