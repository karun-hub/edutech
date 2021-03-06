import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
class Post {
  final String title;
  final String description;

  Post(this.title, this.description);
}
class Stdn_dtls extends StatelessWidget {
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
title: Text("Data"),
      ),
      body:SingleChildScrollView(
        child: Stack(
         // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SearchBar<Post>(
                hintText: "Quick Search",
                hintStyle: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.02,color: Colors.blueGrey),
                onSearch: search,
                onItemFound: (Post post, int index) {
                  return ListTile(
                    title: Text(post.title),
                    subtitle: Text(post.description),
                  );
                },
              ),
            ),
          ],
        ),
      ) ,
    );
  }
}

