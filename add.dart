import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'modelclass.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  double? height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: Colors.white,
        child: Stack(children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: height! * 0.07,
              width: width! * 0.4,
              //color: Colors.brown,
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
              height: height! * 0.9,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                color: Color.fromARGB(255, 17, 78, 128),
              ),
              child: Column(
                children: [
                  Container(
                    height: height! * 0.06,
                    width: width! * 0.9,
                    //color: Colors.black,
                    child: Row(
                      children: [
                        Text(
                          "   Manage Events",
                          style: TextStyle(
                              fontSize: width! * 0.05,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: height! * 0.23,
                    width: width,
                    //color: Colors.amber,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: height! * 0.2,
                            width: width! * 0.7,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                color: Colors.white),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: height! * 0.04,
                                    width: width! * 0.3,
                                    color: Color.fromARGB(255, 17, 78, 128),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(Icons.add_circle_outline),
                                          Text("Add Events")
                                        ]),
                                  ),
                                  Container(
                                    height: height! * 0.03,
                                    width: width! * 0.5,
                                    // color: Colors.amber,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            height: height! * 0.003,
                                            width: width! * 0.2,
                                            color: Colors.grey,
                                          ),
                                          Text("OR"),
                                          Container(
                                            height: height! * 0.003,
                                            width: width! * 0.2,
                                            color: Colors.grey,
                                          ),
                                        ]),
                                  ),
                                  Container(
                                    height: height! * 0.06,
                                    width: width! * 0.5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 205, 201, 201),
                                    ),
                                    child: Row(children: [
                                      Text(
                                        "   Add Via Excel Sheet",
                                        style: TextStyle(
                                            fontSize: width! * 0.028,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width: width! * 0.04,
                                      ),
                                      Container(
                                        height: height! * 0.03,
                                        width: width! * 0.08,
                                        color: Color.fromARGB(255, 17, 78, 128),
                                        child: Center(child: Text("C3V")),
                                      ),
                                      Container(
                                        height: height! * 0.03,
                                        width: width! * 0.06,
                                        color:
                                            Color.fromARGB(255, 40, 110, 143),
                                        child: Icon(
                                          Icons.download_outlined,
                                          size: width! * 0.04,
                                        ),
                                      )
                                    ]),
                                  )
                                ]),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: height! * 0.089, left: width! * 0.02),
                          child: Container(
                            height: height! * 0.05,
                            width: width! * 0.2,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                              color: Color.fromARGB(255, 17, 78, 128),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: height! * 0.089, left: width! * 0.78),
                          child: Container(
                            height: height! * 0.05,
                            width: width! * 0.2,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                              color: Color.fromARGB(255, 17, 78, 128),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height! * 0.6,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    height: height! * 0.07,
                    width: width,
                    //color: Colors.greenAccent,
                    child: Row(
                      children: [
                        Text(
                          "          Up Comming Events",
                          style: TextStyle(
                              fontSize: width! * 0.05,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: height! * 0.445,
                    width: width! * 0.75,
                    child: ListView.builder(
                      itemCount: Apps.list.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Container(
                            height: height! * 0.27,
                            width: width! * 0.75,
                            child: Column(
                              children: [
                                // SizedBox(
                                //   height: height! * 0.005,
                                // ),
                                Container(
                                    height: height! * 0.24,
                                    width: width! * 0.8,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        //color: Colors.amber,
                                        image: DecorationImage(
                                            image: NetworkImage(Apps
                                                .list[index].image
                                                .toString()),
                                            fit: BoxFit.fill)),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                            width: width! * 0.06,
                                          ),
                                          Text(
                                            Apps.list[index].name.toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: width! * 0.04,
                                                color: Colors.white),
                                          ),
                                          Spacer(),
                                          Text(
                                            Apps.list[index].date.toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: width! * 0.04,
                                                color: Colors.white),
                                          ),
                                          SizedBox(
                                            width: width! * 0.06,
                                          )
                                        ])),
                              ],
                            ));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
