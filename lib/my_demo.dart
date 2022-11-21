import 'package:flutter/material.dart';

class MyDemoSaab extends StatefulWidget {
  const MyDemoSaab({Key? key}) : super(key: key);

  @override
  State<MyDemoSaab> createState() => _MyDemoSaabState();
}

class _MyDemoSaabState extends State<MyDemoSaab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black12,
      ),
      body: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          color: Colors.black12,
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.black12,
              image: DecorationImage(
                opacity: .30,
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/quetta.jpg',
                ),
              ),
            ),
            child: Stack(children: const []),
          ),
        )
      ]),
    );
  }
}
