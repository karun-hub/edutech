import 'package:dio/dio.dart';
import 'package:edutech/Screen/NavDrawer.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _filter = new TextEditingController();
  final dio = new Dio(); // for http requests
  String _searchText = "";
  List names = new List(); // names we get from API
  List filteredNames = new List(); // names filtered by search text
  Icon _searchIcon = new Icon(Icons.search);
  Widget _appBarTitle = new Text('Search Example');
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

//int Size_Configwidth = MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue[100], Colors.white, Colors.red[100]])),
        ),
       // foregroundColor: Colors.red[100],
        title: Text(" KAKA'S INTERNATIONAL SCHOOL",style: TextStyle(color: Colors.indigo[900],fontWeight: FontWeight.bold
        ),),
       //backgroundColor: LinearGradient(colors: [Colors.white,Colors.black]),
        shadowColor: Colors.transparent,
        //leading: Icon(Icons.person),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue[100], Colors.white, Colors.red[100]])),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.height * 0.01,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Horizontal_Tile(
                            title: "WEBSITE",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Horizontal_Tile(
                            title: "DASHBOARD",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Horizontal_Tile(
                            title: "REPORTS",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            child: Row(
                              children: [
                                Text(
                                  "DEFAULT",
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(Icons.arrow_downward_rounded,
                                    color: Colors.indigo)
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            child: Row(
                              children: [
                                Text(
                                  "2021 [Jan-Jun]",
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(Icons.arrow_downward_rounded,
                                    color: Colors.indigo)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Text(
                    "Welcome - KAKA'S INTERNATIONAL SCHOOL | Super admin",
                    style: TextStyle(
                        color: Colors.indigo[900],
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height * 0.03),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .1,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.03),
                          child: Slideabel_Tile(
                            title: "Student",
                            total: "Total Students",
                            number: '204',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.02),
                          child: Slideabel_Tile(
                            title: "Teachers",
                            total: "Total Teachers",
                            number: '13',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.02),
                          child: Slideabel_Tile(
                            title: "Parents",
                            total: "Total Parents",
                            number: '204',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.02),
                          child: Slideabel_Tile(
                            title: "Staffs",
                            total: "Total Staffs",
                            number: '16',
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Text(
                    "Income and Expenses for Sep 2021",
                    style: TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height * 0.027),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  SingleChildScrollView(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.height * 0.01,
                      ),
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.height * 0.015),
                        width: MediaQuery.of(context).size.height,
                        child: Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      r"$0",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.025,
                                          color: Colors.purple,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01,
                                    ),
                                    Text(
                                      "Total Income",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.015,
                                          color: Colors.blueGrey),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      r"$0",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.025,
                                          color: Colors.purple,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01,
                                    ),
                                    Text(
                                      "Total Expense",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.015,
                                          color: Colors.blueGrey),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      r"$0",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.025,
                                          color: Colors.purple,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01,
                                    ),
                                    Text(
                                      "Total Profit",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.015,
                                          color: Colors.blueGrey),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.07,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "1",
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.015,
                                      color: Colors.blueGrey),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal:
                                            MediaQuery.of(context).size.height *
                                                0.015),
                                    child: Divider(
                                      indent: 20,
                                      height: 6,
                                      thickness: 2,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.049,
                            ),
                            Row(
                              children: [
                                Text(
                                  "0.75",
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.015,
                                      color: Colors.blueGrey),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal:
                                            MediaQuery.of(context).size.height *
                                                0.015),
                                    child: Divider(
                                      indent: 6,
                                      height: 36,
                                      thickness: 2,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.04,
                            ),
                            Row(
                              children: [
                                Text(
                                  "0.5",
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.015,
                                      color: Colors.blueGrey),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal:
                                            MediaQuery.of(context).size.height *
                                                0.015),
                                    child: Divider(
                                      indent: 10,
                                      height: 36,
                                      thickness: 2,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.05,
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Horizontal_Tile extends StatelessWidget {
  const Horizontal_Tile({Key key, this.title}) : super(key: key);
  final title;
  @override
  Widget build(BuildContext context) {
    return Container(
     // height: MediaQuery.of(context).size.height*0.025,
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.017),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class Slideabel_Tile extends StatelessWidget {
  const Slideabel_Tile({Key key, this.title, this.total, this.number})
      : super(key: key);
  final title, total, number;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.03),
      width: MediaQuery.of(context).size.width * .4,
      height: MediaQuery.of(context).size.height * .25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  total,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.015,
                      color: Colors.blueGrey),
                ),
              ],
            ),
          ),
          Text(
            number,
            style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
