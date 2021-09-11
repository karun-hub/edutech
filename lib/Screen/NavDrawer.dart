import 'package:edutech/Screen/Homepage.dart';
import 'package:edutech/Screen/Search_Sample.dart';
import 'package:edutech/Screen/Student_Details.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Column(
              children: [
                Text(
                  "KAKA'S",
                  style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text("International School",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 10,
                    )),
              ],
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue[100], Colors.white, Colors.red[100]])),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue[100], Colors.white, Colors.red[100]])),
            child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MyHomePage()));
                },
                color: Colors.transparent,
                elevation: 0.0,
                child: Text(
                  "DashBoard",
                  style: TextStyle(
                      color: Colors.indigo, fontWeight: FontWeight.bold),
                )),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue[100], Colors.white, Colors.red[100]])),
            child: Card(
              color: Colors.transparent,
              elevation: 0,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  ExpansionTileCard(
                    elevation: 0.0,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    baseColor: Colors.transparent,
                    expandedColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    title: Padding(
                      padding: EdgeInsets.only(bottom: 4, top: 0, left: 4),
                      child: Text(
                        "ADMIN SECTION",
                        style: TextStyle(
                            color: Colors.indigo, fontWeight: FontWeight.bold),
                      ),
                    ),
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.indigo[400]),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height *
                                      0.02),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                      flex: 4,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        child: RaisedButton(
                                          color: Colors.transparent,
                                          elevation: 0.0,
                                          child: Text(
                                            "Designation",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          onPressed: () {},
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              decoration:
                                  BoxDecoration(color: Colors.indigo[400]),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.02),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                            flex: 4,
                                            fit: FlexFit.tight,
                                            child: Container(
                                              child: RaisedButton(
                                                color: Colors.transparent,
                                                elevation: 0.0,
                                                child: Text(
                                                  "Designation",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                onPressed: () {},
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue[100], Colors.white, Colors.red[100]])),
            child: Card(
              color: Colors.transparent,
              elevation: 0,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  ExpansionTileCard(
                    elevation: 0.0,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    baseColor: Colors.transparent,
                    expandedColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    title: Padding(
                      padding: EdgeInsets.only(bottom: 4, top: 0, left: 4),
                      child: Text(
                        "STUDENT INFO",
                        style: TextStyle(
                            color: Colors.indigo, fontWeight: FontWeight.bold),
                      ),
                    ),
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.indigo[400]),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height *
                                      0.02),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                      flex: 4,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        child: RaisedButton(
                                          color: Colors.transparent,
                                          elevation: 0.0,
                                          child: Text(
                                            "STUDENT CATEGORY",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          onPressed: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Home()));
                                          },
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Student_Navbar(
                              title: "ADD STUDENT",
                            ),
                            Student_Navbar(
                              title: "STUDENT LIST",
                            ),
                            Student_Navbar(
                              title: "STUDENT ATTENDANCE",
                            ),
                            Student_Navbar(
                              title: "STUDENT ATTENDANCE REPORT",
                            ),
                            Student_Navbar(
                              title: "STUDENT GROUP",
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue[100], Colors.white, Colors.red[100]])),
            child: Card(
              color: Colors.transparent,
              elevation: 0,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  ExpansionTileCard(
                    elevation: 0.0,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    baseColor: Colors.transparent,
                    expandedColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    title: Padding(
                      padding: EdgeInsets.only(bottom: 4, top: 0, left: 4),
                      child: Text(
                        "ACADEMICS",
                        style: TextStyle(
                            color: Colors.indigo, fontWeight: FontWeight.bold),
                      ),
                    ),
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.indigo[400]),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height *
                                      0.02),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                      flex: 4,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        child: RaisedButton(
                                          color: Colors.transparent,
                                          elevation: 0.0,
                                          child: Text(
                                            "Designation",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          onPressed: () {},
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              decoration:
                                  BoxDecoration(color: Colors.indigo[400]),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.02),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                            flex: 4,
                                            fit: FlexFit.tight,
                                            child: Container(
                                              child: RaisedButton(
                                                color: Colors.transparent,
                                                elevation: 0.0,
                                                child: Text(
                                                  "Designation",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                onPressed: () {},
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue[100], Colors.white, Colors.red[100]])),
            child: Card(
              color: Colors.transparent,
              elevation: 0,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  ExpansionTileCard(
                    elevation: 0.0,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    baseColor: Colors.transparent,
                    expandedColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    title: Padding(
                      padding: EdgeInsets.only(bottom: 4, top: 0, left: 4),
                      child: Text(
                        "UPLOAD",
                        style: TextStyle(
                            color: Colors.indigo, fontWeight: FontWeight.bold),
                      ),
                    ),
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.indigo[400]),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height *
                                      0.02),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                      flex: 4,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        child: RaisedButton(
                                          color: Colors.transparent,
                                          elevation: 0.0,
                                          child: Text(
                                            "Designation",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          onPressed: () {},
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              decoration:
                                  BoxDecoration(color: Colors.indigo[400]),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.02),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                            flex: 4,
                                            fit: FlexFit.tight,
                                            child: Container(
                                              child: RaisedButton(
                                                color: Colors.transparent,
                                                elevation: 0.0,
                                                child: Text(
                                                  "Designation",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                onPressed: () {},
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue[100], Colors.white, Colors.red[100]])),
            child: Card(
              color: Colors.transparent,
              elevation: 0,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  ExpansionTileCard(
                    elevation: 0.0,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    baseColor: Colors.transparent,
                    expandedColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    title: Padding(
                      padding: EdgeInsets.only(bottom: 4, top: 0, left: 4),
                      child: Text(
                        "FEES COLLECTION",
                        style: TextStyle(
                            color: Colors.indigo, fontWeight: FontWeight.bold),
                      ),
                    ),
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.indigo[400]),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height *
                                      0.02),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                      flex: 4,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        child: RaisedButton(
                                          color: Colors.transparent,
                                          elevation: 0.0,
                                          child: Text(
                                            "Designation",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          onPressed: () {},
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              decoration:
                                  BoxDecoration(color: Colors.indigo[400]),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.02),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                            flex: 4,
                                            fit: FlexFit.tight,
                                            child: Container(
                                              child: RaisedButton(
                                                color: Colors.transparent,
                                                elevation: 0.0,
                                                child: Text(
                                                  "Designation",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                onPressed: () {},
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue[100], Colors.white, Colors.red[100]])),
            child: Card(
              color: Colors.transparent,
              elevation: 0,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  ExpansionTileCard(
                    elevation: 0.0,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    baseColor: Colors.transparent,
                    expandedColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    title: Padding(
                      padding: EdgeInsets.only(bottom: 4, top: 0, left: 4),
                      child: Text(
                        "ACCOUNTS",
                        style: TextStyle(
                            color: Colors.indigo, fontWeight: FontWeight.bold),
                      ),
                    ),
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.indigo[400]),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height *
                                      0.02),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                      flex: 4,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        child: RaisedButton(
                                          color: Colors.transparent,
                                          elevation: 0.0,
                                          child: Text(
                                            "Designation",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          onPressed: () {},
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              decoration:
                                  BoxDecoration(color: Colors.indigo[400]),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.02),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                            flex: 4,
                                            fit: FlexFit.tight,
                                            child: Container(
                                              child: RaisedButton(
                                                color: Colors.transparent,
                                                elevation: 0.0,
                                                child: Text(
                                                  "Designation",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                onPressed: () {},
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue[100], Colors.white, Colors.red[100]])),
            child: Card(
              color: Colors.transparent,
              elevation: 0,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  ExpansionTileCard(
                    elevation: 0.0,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    baseColor: Colors.transparent,
                    expandedColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    title: Padding(
                      padding: EdgeInsets.only(bottom: 4, top: 0, left: 4),
                      child: Text(
                        "HUMAN RESOURCE",
                        style: TextStyle(
                            color: Colors.indigo, fontWeight: FontWeight.bold),
                      ),
                    ),
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.indigo[400]),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height *
                                      0.02),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                      flex: 4,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        child: RaisedButton(
                                          color: Colors.transparent,
                                          elevation: 0.0,
                                          child: Text(
                                            "Designation",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          onPressed: () {},
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              decoration:
                                  BoxDecoration(color: Colors.indigo[400]),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.02),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                            flex: 4,
                                            fit: FlexFit.tight,
                                            child: Container(
                                              child: RaisedButton(
                                                color: Colors.transparent,
                                                elevation: 0.0,
                                                child: Text(
                                                  "Designation",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                onPressed: () {},
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue[100], Colors.white, Colors.red[100]])),
            child: Card(
              color: Colors.transparent,
              elevation: 0,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  ExpansionTileCard(
                    elevation: 0.0,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    baseColor: Colors.transparent,
                    expandedColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    title: Padding(
                      padding: EdgeInsets.only(bottom: 4, top: 0, left: 4),
                      child: Text(
                        "LEAVE",
                        style: TextStyle(
                            color: Colors.indigo, fontWeight: FontWeight.bold),
                      ),
                    ),
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.indigo[400]),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height *
                                      0.02),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                      flex: 4,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        child: RaisedButton(
                                          color: Colors.transparent,
                                          elevation: 0.0,
                                          child: Text(
                                            "Designation",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          onPressed: () {},
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              decoration:
                                  BoxDecoration(color: Colors.indigo[400]),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.02),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                            flex: 4,
                                            fit: FlexFit.tight,
                                            child: Container(
                                              child: RaisedButton(
                                                color: Colors.transparent,
                                                elevation: 0.0,
                                                child: Text(
                                                  "Designation",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                onPressed: () {},
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue[100], Colors.white, Colors.red[100]])),
            child: Card(
              color: Colors.transparent,
              elevation: 0,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  ExpansionTileCard(
                    elevation: 0.0,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    baseColor: Colors.transparent,
                    expandedColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    title: Padding(
                      padding: EdgeInsets.only(bottom: 4, top: 0, left: 4),
                      child: Text(
                        "EXAMINATION",
                        style: TextStyle(
                            color: Colors.indigo, fontWeight: FontWeight.bold),
                      ),
                    ),
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.indigo[400]),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height *
                                      0.02),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                      flex: 4,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        child: RaisedButton(
                                          color: Colors.transparent,
                                          elevation: 0.0,
                                          child: Text(
                                            "Designation",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          onPressed: () {},
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              decoration:
                                  BoxDecoration(color: Colors.indigo[400]),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.02),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                            flex: 4,
                                            fit: FlexFit.tight,
                                            child: Container(
                                              child: RaisedButton(
                                                color: Colors.transparent,
                                                elevation: 0.0,
                                                child: Text(
                                                  "Designation",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                onPressed: () {},
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue[100], Colors.white, Colors.red[100]])),
            child: Card(
              color: Colors.transparent,
              elevation: 0,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  ExpansionTileCard(
                    elevation: 0.0,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    baseColor: Colors.transparent,
                    expandedColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    title: Padding(
                      padding: EdgeInsets.only(bottom: 4, top: 0, left: 4),
                      child: Text(
                        "HOMEWORK",
                        style: TextStyle(
                            color: Colors.indigo, fontWeight: FontWeight.bold),
                      ),
                    ),
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.indigo[400]),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height *
                                      0.02),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                      flex: 4,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        child: RaisedButton(
                                          color: Colors.transparent,
                                          elevation: 0.0,
                                          child: Text(
                                            "Designation",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          onPressed: () {},
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              decoration:
                                  BoxDecoration(color: Colors.indigo[400]),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.02),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                            flex: 4,
                                            fit: FlexFit.tight,
                                            child: Container(
                                              child: RaisedButton(
                                                color: Colors.transparent,
                                                elevation: 0.0,
                                                child: Text(
                                                  "Designation",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                onPressed: () {},
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue[100], Colors.white, Colors.red[100]])),
            child: Card(
              color: Colors.transparent,
              elevation: 0,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  ExpansionTileCard(
                    elevation: 0.0,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    baseColor: Colors.transparent,
                    expandedColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    title: Padding(
                      padding: EdgeInsets.only(bottom: 4, top: 0, left: 4),
                      child: Text(
                        "COMMUNICATE",
                        style: TextStyle(
                            color: Colors.indigo, fontWeight: FontWeight.bold),
                      ),
                    ),
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.indigo[400]),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height *
                                      0.02),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                      flex: 4,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        child: RaisedButton(
                                          color: Colors.transparent,
                                          elevation: 0.0,
                                          child: Text(
                                            "Designation",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          onPressed: () {},
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              decoration:
                                  BoxDecoration(color: Colors.indigo[400]),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.02),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                            flex: 4,
                                            fit: FlexFit.tight,
                                            child: Container(
                                              child: RaisedButton(
                                                color: Colors.transparent,
                                                elevation: 0.0,
                                                child: Text(
                                                  "Designation",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                onPressed: () {},
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Student_Navbar extends StatelessWidget {
  const Student_Navbar({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.indigo[400]),
      child: Column(
        children: [
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                    flex: 4,
                    fit: FlexFit.tight,
                    child: Container(
                      child: RaisedButton(
                        color: Colors.transparent,
                        elevation: 0.0,
                        child: Text(
                          title,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
