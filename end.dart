import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'modelclass.dart';

class End extends StatefulWidget {
  const End({super.key});

  @override
  State<End> createState() => _EndState();
}

class _EndState extends State<End> {
  double? height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          color: Colors.white,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: height! * 0.07,
                  width: width! * 0.4,
                  // color: Colors.brown,
                  child: Row(children: [
                    SizedBox(
                      width: width! * 0.076,
                    ),
                    Icon(
                      Icons.arrow_back_ios_new,
                      size: width! * 0.05,
                    ),
                    Text(
                      "  Back",
                      style: TextStyle(fontSize: width! * 0.04),
                    )
                  ]),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    height: height! * 0.88,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(50)),
                      color: Color.fromARGB(255, 17, 78, 128),
                    ),
                    child: Column(children: [
                      Container(
                        height: height! * 0.06,
                        width: width! * 0.9,
                        //color: Colors.black,
                        child: Row(
                          children: [
                            Text(
                              "   Manage Leaves",
                              style: TextStyle(
                                  fontSize: width! * 0.05,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: height! * 0.06,
                        width: width! * 0.7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                        ),
                        child: Row(children: [
                          SizedBox(
                            width: width! * 0.04,
                          ),
                          Icon(Icons.search),
                          Text(" Search")
                        ]),
                      ),
                      SizedBox(
                        height: height! * 0.01,
                      ),
                      Container(
                        height: height! * 0.14,
                        width: width,
                        // color: Colors.black38,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: height! * 0.13,
                                width: width! * 0.8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(40)),
                                  color: Colors.white,
                                ),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: height! * 0.04,
                                        width: width! * 0.2,
                                        color: Color.fromARGB(255, 17, 78, 128),
                                        child: Center(
                                          child: Text(
                                            "Leave C3V",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: height! * 0.04,
                                        width: width! * 0.1,
                                        color:
                                            Color.fromARGB(255, 56, 132, 168),
                                        child: Icon(Icons.download_outlined),
                                      )
                                    ]),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width! * 0.02),
                              child: Container(
                                height: height! * 0.04,
                                width: width! * 0.15,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(60)),
                                  color: Color.fromARGB(255, 17, 78, 128),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width! * 0.82),
                              child: Container(
                                height: height! * 0.04,
                                width: width! * 0.15,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(60)),
                                  color: Color.fromARGB(255, 17, 78, 128),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ])),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: height! * 0.55,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(50)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height! * 0.03),
                        child: Container(
                            height: height! * 0.5,
                            width: width,
                            child: ListView.builder(
                              padding: EdgeInsets.only(
                                bottom: height! * 0.06,
                              ),
                              itemCount: Apps.list2.length,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: height! * 0.2,
                                  width: width,
                                  //color: Colors.indigo,
                                  child: Row(
                                    children: [
                                      SizedBox(width: width! * 0.02),
                                      Container(
                                        height: height! * 0.15,
                                        width: width! * 0.2,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.black,
                                            image: DecorationImage(
                                                image: NetworkImage(Apps
                                                    .list2[index].image
                                                    .toString()))),
                                      ),
                                      Container(
                                        height: height! * 0.2,
                                        width: width! * 0.7,
                                        // color: Colors.blue,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: height! * 0.07,
                                                  right: width! * 0.3),
                                              child: Text(
                                                Apps.list2[index].name
                                                    .toString(),
                                                style: TextStyle(
                                                    fontSize: width! * 0.04,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: height! * 0.01,
                                                  right: width! * 0.3),
                                              child: Text(
                                                Apps.list2[index].degree
                                                    .toString(),
                                                style: TextStyle(
                                                    fontSize: width! * 0.04,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: height! * 0.03),
                                              child: Container(
                                                height: height! * 0.001,
                                                width: width! * 0.7,
                                                color: Colors.black,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom: height! * 0.05,
                                            left: width! * 0.005),
                                        child: Icon(Icons.more_horiz),
                                      )
                                    ],
                                  ),
                                );
                              },
                            )),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: height! * 0.4, left: width! * 0.15),
                child: Container(
                  height: height! * 0.045,
                  width: width! * 0.7,
                  //color: Colors.teal,
                  child: Stack(children: [
                    Padding(
                      padding: EdgeInsets.only(left: width! * 0.2),
                      child: Container(
                        height: height! * 0.045,
                        width: width! * 0.5,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 27, 58, 142),
                            borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(10))),
                        child: Center(
                          child: Text(
                            "            Student",
                            style: TextStyle(
                                fontSize: width! * 0.045,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: height! * 0.045,
                      width: width! * 0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 123, 147, 214),
                      ),
                      child: Center(
                        child: Text(
                          "Teacher",
                          style: TextStyle(
                              fontSize: width! * 0.045,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    )
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
