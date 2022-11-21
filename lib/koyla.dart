import 'package:flutter/material.dart';

class Koyla extends StatelessWidget {
  const Koyla({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 250, 21, 5),
        Color.fromARGB(255, 248, 90, 17)
      ])),
      child: Column(
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Container(
                alignment: Alignment.centerLeft,
                // color: Colors.orange,
                height: 200,
                decoration: const BoxDecoration(),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(35))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Email or Phone number',
                                hintStyle: TextStyle(color: Colors.black))),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(08),
                            border: Border.all(width: 0.2),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.blue.withOpacity(0.5),
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0,
                                  offset: Offset.fromDirection(20, 10))
                            ],
                          ),
                          child: const TextField(
                              decoration: InputDecoration(
                                  hintText: '  Password',
                                  hintStyle: TextStyle(color: Colors.black38))),
                        )
                      ]),
                ),
              ))
        ],
      ),
    );
  }
}
