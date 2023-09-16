import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DashBoard extends StatefulWidget {
  DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  double? a, b;
  @override
  Widget build(BuildContext context) {
    a = MediaQuery.of(context).size.height;
    b = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: a,
          width: b,
          color: Color.fromARGB(255, 234, 234, 234),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: a! * 0.66,
                  width: b,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(50)),
                    color: Color.fromARGB(255, 87, 169, 236),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: a! * 0.33,
                  width: b,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(50)),
                    color: Color.fromARGB(255, 17, 78, 128),
                  ),
                ),
              ),
              Column(children: [
                Container(
                  height: a! * 0.045,
                  width: b,
                  //color: Colors.amber,
                  child: Row(children: [
                    SizedBox(
                      width: b! * 0.05,
                    ),
                    Icon(
                      Icons.menu,
                      color: Color.fromARGB(255, 84, 82, 82),
                      size: b! * 0.07,
                    ),
                    Spacer(),
                    Icon(
                      Icons.notifications,
                      color: Color.fromARGB(255, 65, 63, 63),
                      size: b! * 0.07,
                    ),
                    SizedBox(
                      width: b! * 0.02,
                    ),
                    Container(
                      height: a! * 0.07,
                      width: b! * 0.07,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 54, 165, 209),
                      ),
                      child: Center(
                          child: Text(
                        "SOS",
                        style: TextStyle(fontSize: b! * 0.025),
                      )),
                    ),
                    SizedBox(
                      width: b! * 0.05,
                    )
                  ]),
                ),
                Container(
                  height: a! * 0.04,
                  width: b,
                  //color: Colors.amber,
                  child: Row(
                    children: [
                      SizedBox(
                        width: b! * 0.05,
                      ),
                      Text(
                        "Good Morning !",
                        style: TextStyle(
                            fontSize: b! * 0.048, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: b! * 0.9,
                  height: a! * 0.06,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(179, 216, 212, 212),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(children: [
                    SizedBox(
                      width: b! * 0.02,
                    ),
                    Icon(Icons.search),
                    SizedBox(
                      width: b! * 0.01,
                    ),
                    Text(
                      "Search",
                      style:
                          TextStyle(color: Color.fromARGB(255, 109, 108, 108)),
                    )
                  ]),
                ),
                SizedBox(
                  height: a! * 0.01,
                ),
                Container(
                  height: a! * 0.2,
                  width: b! * 0.9,
                  //color: Colors.amber,
                  child: Row(children: [
                    Container(
                      height: a! * 0.19,
                      width: b! * 0.4,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 219, 219, 219),
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        children: [
                          Container(
                            height: a! * 0.1,
                            width: b! * 0.4,
                            //color: Colors.black38,
                            child: Row(children: [
                              Container(
                                height: a! * 0.06,
                                width: b! * 0.17,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25)),
                                    //color: Colors.blue,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn-icons-png.flaticon.com/128/9721/9721094.png"))),
                              ),
                              Text(
                                "Add Teacher",
                                style: TextStyle(
                                    fontSize: b! * 0.035,
                                    fontWeight: FontWeight.w500),
                              )
                            ]),
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(right: b! * 0.1, top: 0),
                                child: Container(
                                  height: a! * 0.09,
                                  width: b! * 0.09,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.brown,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://images.unsplash.com/photo-1601288496920-b6154fe3626a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZmFjZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"))),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: b! * 0.05, top: 0),
                                child: Container(
                                  height: a! * 0.09,
                                  width: b! * 0.09,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromARGB(255, 36, 54, 69),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZmFjZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"))),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: b! * 0.09, top: 0),
                                child: Container(
                                  height: a! * 0.09,
                                  width: b! * 0.09,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.amber,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGZhY2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"))),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: b! * 0.13, top: 0),
                                child: Container(
                                  height: a! * 0.09,
                                  width: b! * 0.09,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://images.unsplash.com/photo-1545167622-3a6ac756afa4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZmFjZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"))),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: b! * 0.17, top: 0),
                                child: Container(
                                  height: a! * 0.09,
                                  width: b! * 0.09,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromARGB(255, 23, 135, 150)),
                                  child: Center(child: Text("+23")),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: b! * 0.28, top: 0),
                                child: Container(
                                  height: a! * 0.09,
                                  width: b! * 0.09,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromARGB(255, 219, 219, 219),
                                      border: Border.all(color: Colors.black)),
                                  child: Center(child: Icon(Icons.add)),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: b! * 0.1,
                    ),
                    Container(
                      height: a! * 0.19,
                      width: b! * 0.4,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 219, 219, 219),
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        children: [
                          Container(
                            height: a! * 0.1,
                            width: b! * 0.4,
                            // color: Colors.black38,
                            child: Row(children: [
                              Container(
                                height: a! * 0.06,
                                width: b! * 0.17,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25)),
                                    //color: Colors.blue,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn-icons-png.flaticon.com/128/3135/3135773.png"))),
                              ),
                              Text(
                                "Add Student",
                                style: TextStyle(
                                    fontSize: b! * 0.035,
                                    fontWeight: FontWeight.w500),
                              )
                            ]),
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(right: b! * 0.01, top: 0),
                                child: Container(
                                  height: a! * 0.09,
                                  width: b! * 0.09,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.brown,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGZhY2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"))),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: b! * 0.05, top: 0),
                                child: Container(
                                  height: a! * 0.09,
                                  width: b! * 0.09,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromARGB(255, 36, 54, 69),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://images.unsplash.com/photo-1623605931891-d5b95ee98459?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1794&q=80"))),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: b! * 0.09, top: 0),
                                child: Container(
                                  height: a! * 0.09,
                                  width: b! * 0.09,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.amber,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"))),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: b! * 0.13, top: 0),
                                child: Container(
                                  height: a! * 0.09,
                                  width: b! * 0.09,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://images.unsplash.com/photo-1559637621-d766677659e8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"))),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: b! * 0.18, top: 0),
                                child: Container(
                                  height: a! * 0.09,
                                  width: b! * 0.09,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromARGB(255, 23, 135, 150)),
                                  child: Center(
                                      child: Text(
                                    "+121",
                                    style: TextStyle(fontSize: b! * 0.025),
                                  )),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: b! * 0.28, top: 0),
                                child: Container(
                                  height: a! * 0.09,
                                  width: b! * 0.09,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromARGB(255, 219, 219, 219),
                                      border: Border.all(color: Colors.black)),
                                  child: Center(child: Icon(Icons.add)),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  height: a! * 0.01,
                ),
                Container(
                  height: a! * 0.19,
                  width: b! * 0.9,
                  //color: Colors.amber,
                  child: Row(children: [
                    Container(
                      height: a! * 0.2,
                      width: b! * 0.4,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 219, 219, 219),
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        children: [
                          Container(
                            height: a! * 0.1,
                            width: b! * 0.4,
                            // color: Colors.black38,
                            child: Row(children: [
                              Container(
                                height: a! * 0.06,
                                width: b! * 0.17,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25)),
                                    //color: Colors.blue,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn-icons-png.flaticon.com/128/2558/2558957.png"))),
                              ),
                              Text(
                                "Add Events",
                                style: TextStyle(
                                    fontSize: b! * 0.035,
                                    fontWeight: FontWeight.w500),
                              )
                            ]),
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(right: b! * 0.01, top: 0),
                                child: Container(
                                  height: a! * 0.09,
                                  width: b! * 0.09,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(255, 83, 165, 232),
                                    // image: DecorationImage(
                                    //     image: NetworkImage(
                                    //         "https://images.unsplash.com/photo-1601288496920-b6154fe3626a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZmFjZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"))
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: b! * 0.05, top: 0),
                                child: Container(
                                  height: a! * 0.09,
                                  width: b! * 0.09,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(255, 17, 81, 134),
                                    // image: DecorationImage(
                                    //     image: NetworkImage(
                                    //         "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZmFjZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"))
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: b! * 0.09, top: 0),
                                child: Container(
                                  height: a! * 0.09,
                                  width: b! * 0.09,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(255, 83, 165, 232),
                                    // image: DecorationImage(
                                    //     image: NetworkImage(
                                    //         "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGZhY2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"))
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: b! * 0.13, top: 0),
                                child: Container(
                                  height: a! * 0.09,
                                  width: b! * 0.09,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(255, 17, 81, 134),
                                    // image: DecorationImage(
                                    //     image: NetworkImage(
                                    //         "https://images.unsplash.com/photo-1545167622-3a6ac756afa4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZmFjZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"))
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: b! * 0.18, top: 0),
                                child: Container(
                                  height: a! * 0.09,
                                  width: b! * 0.09,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromARGB(255, 23, 135, 150)),
                                  child: Center(child: Icon(Icons.event)),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: b! * 0.28, top: 0),
                                child: Container(
                                  height: a! * 0.09,
                                  width: b! * 0.09,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromARGB(255, 219, 219, 219),
                                      border: Border.all(color: Colors.black)),
                                  child: Center(child: Icon(Icons.add)),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: b! * 0.1,
                    ),
                    Container(
                      height: a! * 0.19,
                      width: b! * 0.4,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 219, 219, 219),
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        children: [
                          Container(
                            height: a! * 0.1,
                            width: b! * 0.4,
                            // color: Colors.black38,
                            child: Row(children: [
                              Container(
                                height: a! * 0.06,
                                width: b! * 0.17,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25)),
                                    //color: Colors.blue,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn-icons-png.flaticon.com/128/596/596092.png"))),
                              ),
                              Text(
                                "Add Notices",
                                style: TextStyle(
                                    fontSize: b! * 0.035,
                                    fontWeight: FontWeight.w500),
                              )
                            ]),
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(right: b! * 0.01, top: 0),
                                child: Container(
                                  height: a! * 0.09,
                                  width: b! * 0.09,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(255, 83, 165, 232),
                                    // image: DecorationImage(
                                    //     image: NetworkImage(
                                    //         "https://images.unsplash.com/photo-1601288496920-b6154fe3626a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZmFjZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"))
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: b! * 0.05, top: 0),
                                child: Container(
                                  height: a! * 0.09,
                                  width: b! * 0.09,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(255, 17, 81, 134),
                                    // image: DecorationImage(
                                    //     image: NetworkImage(
                                    //         "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZmFjZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"))
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: b! * 0.09, top: 0),
                                child: Container(
                                  height: a! * 0.09,
                                  width: b! * 0.09,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(255, 83, 165, 232),
                                    // image: DecorationImage(
                                    //     image: NetworkImage(
                                    //         "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGZhY2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"))
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: b! * 0.13, top: 0),
                                child: Container(
                                  height: a! * 0.09,
                                  width: b! * 0.09,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(255, 17, 81, 134),
                                    // image: DecorationImage(
                                    //     image: NetworkImage(
                                    //         "https://images.unsplash.com/photo-1545167622-3a6ac756afa4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZmFjZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"))
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: b! * 0.18, top: 0),
                                child: Container(
                                  height: a! * 0.09,
                                  width: b! * 0.09,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromARGB(255, 23, 135, 150)),
                                  child: Center(
                                      child: Icon(CupertinoIcons.speaker_3)),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: b! * 0.28, top: 0),
                                child: Container(
                                  height: a! * 0.09,
                                  width: b! * 0.09,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromARGB(255, 219, 219, 219),
                                      border: Border.all(color: Colors.black)),
                                  child: Center(child: Icon(Icons.add)),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  height: a! * 0.015,
                ),
                Container(
                  height: a! * 0.127,
                  width: b! * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 219, 219, 219)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: a! * 0.01,
                      ),
                      Text(
                        "  Manage Co-Ordinators",
                        style: TextStyle(
                            fontSize: b! * 0.04, fontWeight: FontWeight.w500),
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: b! * 0.01, top: 0),
                            child: Container(
                              height: a! * 0.09,
                              width: b! * 0.09,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.brown,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjl8fGZhY2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"))),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: b! * 0.05, top: 0),
                            child: Container(
                              height: a! * 0.09,
                              width: b! * 0.09,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 36, 54, 69),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://images.unsplash.com/photo-1605555579795-81a19ff0ad50?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDR8fGZhY2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"))),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: b! * 0.09, top: 0),
                            child: Container(
                              height: a! * 0.09,
                              width: b! * 0.09,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.amber,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://images.unsplash.com/photo-1534339480783-6816b68be29c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjB8fGZhY2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"))),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: b! * 0.13, top: 0),
                            child: Container(
                              height: a! * 0.09,
                              width: b! * 0.09,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://images.unsplash.com/photo-1590735627513-59a186ed0984?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"))),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: b! * 0.18, top: 0),
                            child: Container(
                              height: a! * 0.09,
                              width: b! * 0.09,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 23, 135, 150)),
                              child: Center(child: Text("+25")),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: b! * 0.8, top: 0),
                            child: Container(
                              height: a! * 0.09,
                              width: b! * 0.09,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 219, 219, 219),
                                  border: Border.all(color: Colors.black)),
                              child: Center(child: Icon(Icons.add)),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: a! * 0.01,
                ),
                Container(
                  height: a! * 0.165,
                  width: b! * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 219, 219, 219)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: a! * 0.005,
                      ),
                      Text(
                        "  Manage Leaves",
                        style: TextStyle(
                            fontSize: b! * 0.04, fontWeight: FontWeight.w500),
                      ),
                      Text(
                          "   More than 30 students have taken leave this month."),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: b! * 0.01, top: 0),
                            child: Container(
                              height: a! * 0.09,
                              width: b! * 0.09,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.brown,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80"))),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: b! * 0.05, top: 0),
                            child: Container(
                              height: a! * 0.09,
                              width: b! * 0.09,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 36, 54, 69),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://images.unsplash.com/photo-1569243478735-8fcf29052262?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80"))),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: b! * 0.09, top: 0),
                            child: Container(
                              height: a! * 0.09,
                              width: b! * 0.09,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.amber,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://images.unsplash.com/photo-1594385614082-ac847d9cb4ef?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"))),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: b! * 0.13, top: 0),
                            child: Container(
                              height: a! * 0.09,
                              width: b! * 0.09,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://images.unsplash.com/photo-1516239482977-b550ba7253f2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=394&q=80"))),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: b! * 0.18, top: 0),
                            child: Container(
                              height: a! * 0.09,
                              width: b! * 0.09,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 23, 135, 150)),
                              child: Center(child: Text("+25")),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: b! * 0.8, top: 0),
                            child: Container(
                              height: a! * 0.09,
                              width: b! * 0.09,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 219, 219, 219),
                                  border: Border.all(color: Colors.black)),
                              child: Center(child: Icon(Icons.add)),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: a! * 0.01,
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
