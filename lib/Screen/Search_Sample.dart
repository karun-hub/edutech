import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';

class Post {
  final String title;
  final String description;

  Post(this.title, this.description);
}

class Home extends StatelessWidget {
  Future<List<Post>> search(String search) async {
    await Future.delayed(Duration(seconds: 2));
    return List.generate(search.length, (int index) {
      return Post(
        "Title : $search $index",
        "Description :$search $index",
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue[100], Colors.white, Colors.red[100]])),
        ),
        title: Text(
          "Student List(39)",
          style:
              TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(color: Colors.indigo[900]),
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue[100], Colors.white, Colors.red[100]])),
          child: Column(children: [
            SizedBox(height: 10,),
            Positioned(
                top: 10,
                left: 20,
                child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 10,),
                        Text("Quick Search",style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ))),
            //SizedBox(height: MediaQuery.of(context).size.height *.2,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Positioned(
                top: 15,
                child: Container(
                  height: 350,
                  width: MediaQuery.of(context).size.height * 1.35,
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .07,
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    padding: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    //color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.03),
                              child: Horizontal_Tile(
                                title: "ADMISSIONNO",
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.03),
                              child: Horizontal_Tile(
                                title: "ROLL NO",
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.03),
                              child: Horizontal_Tile(
                                title: "NAME",
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.03),
                              child: Horizontal_Tile(
                                title: "CLASS",
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.03),
                              child: Horizontal_Tile(
                                title: "FATHER/GAURDIAN NAME",
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.03),
                              child: Horizontal_Tile(
                                title: "DATE OF BIRTH",
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.03),
                              child: Horizontal_Tile(
                                title: "GENDER",
                              ),
                            ),
                          ],
                        ),
                        // Text("HAii"),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.height *
                                            0.015),
                                child: Divider(
                                  //indent: 20,
                                  height: 6,
                                  thickness: 1,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.049,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.03,
                              ),
                              child: Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.add,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("1"),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                            ),
                            Tabel_items(
                              text: "1",
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.15,
                            ),
                            Tabel_items(
                              text: "Krishna Haral",
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.1,
                            ),
                            Tabel_items(
                              text: "LKG",
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.25,
                            ),
                            Tabel_items(
                              text: "Sagar",
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.33,
                            ),
                            Tabel_items(
                              text: "5th Dec, 2017",
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.15,
                            ),
                            Tabel_items(
                              text: "Female",
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.height *
                                            0.015),
                                child: Divider(
                                  //indent: 20,
                                  height: 6,
                                  thickness: 1,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.049,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.03,
                              ),
                              child: Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.add,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("1"),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                            ),
                            Tabel_items(
                              text: "1",
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.15,
                            ),
                            Tabel_items(
                              text: "Krishna Haral",
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.1,
                            ),
                            Tabel_items(
                              text: "LKG",
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.25,
                            ),
                            Tabel_items(
                              text: "Sagar",
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.33,
                            ),
                            Tabel_items(
                              text: "5th Dec, 2017",
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.15,
                            ),
                            Tabel_items(
                              text: "Female",
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.height *
                                            0.015),
                                child: Divider(
                                  //indent: 20,
                                  height: 6,
                                  thickness: 1,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.049,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.03,
                              ),
                              child: Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.add,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("1"),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                            ),
                            Tabel_items(
                              text: "1",
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.15,
                            ),
                            Tabel_items(
                              text: "Krishna Haral",
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.1,
                            ),
                            Tabel_items(
                              text: "LKG",
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.25,
                            ),
                            Tabel_items(
                              text: "Sagar",
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.33,
                            ),
                            Tabel_items(
                              text: "5th Dec, 2017",
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.15,
                            ),
                            Tabel_items(
                              text: "Female",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class Tabel_items extends StatelessWidget {
  const Tabel_items({Key key, this.text}) : super(key: key);
  final text;
  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

class Horizontal_Tile extends StatelessWidget {
  const Horizontal_Tile({Key key, this.title}) : super(key: key);
  final title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_downward_rounded),
          Text(title),
        ],
      ),
    );
  }
}
