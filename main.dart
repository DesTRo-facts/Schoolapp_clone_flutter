//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stackproject/add.dart';
import 'package:stackproject/dashboard.dart';
import 'package:stackproject/end.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double? height, width;
  int index = 0;
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          child: Stack(
            children: [
              Container(
                height: height,
                width: width,
                child: PageView(
                  // physics: NeverScrollableScrollPhysics(),
                  controller: controller,
                  onPageChanged: (value) {
                    print(value);
                    setState(() {
                      index = value;
                    });
                  },
                  children: [
                    DashBoard(),
                    Add(),
                    End(),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: height! * 0.08,
                  width: width! * 0.9,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 219, 219, 219),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Container(
                        height: height! * 0.004,
                        width: width! * 0.88,
                        //color: Colors.blue,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: height! * 0.004,
                                width: width! * 0.13,
                                color: index == 0
                                    ? Colors.blue
                                    : Color.fromARGB(255, 219, 219, 219),
                              ),
                              Container(
                                height: height! * 0.004,
                                width: width! * 0.13,
                                color: index == 1
                                    ? Colors.blue
                                    : Color.fromARGB(255, 219, 219, 219),
                              ),
                              Container(
                                height: height! * 0.004,
                                width: width! * 0.13,
                                color: index == 2
                                    ? Colors.blue
                                    : Color.fromARGB(255, 219, 219, 219),
                              )
                            ]),
                      ),
                      Container(
                        height: height! * 0.07,
                        width: width,
                        // color: Colors.amber,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  controller.jumpToPage(0);
                                },
                                child: Icon(
                                  Icons.home_outlined,
                                  color:
                                      index == 0 ? Colors.blue : Colors.black,
                                  size: width! * 0.07,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  controller.jumpToPage(1);
                                },
                                child: Icon(Icons.add_circle_outline,
                                    color:
                                        index == 1 ? Colors.blue : Colors.black,
                                    size: width! * 0.07),
                              ),
                              InkWell(
                                  onTap: () {
                                    controller.jumpToPage(2);
                                  },
                                  child: Icon(Icons.person_outline,
                                      color: index == 2
                                          ? Colors.blue
                                          : Colors.black,
                                      size: width! * 0.07))
                            ]),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
