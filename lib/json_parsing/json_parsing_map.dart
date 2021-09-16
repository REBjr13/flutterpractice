import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application/model/post.dart';
import 'package:http/http.dart';

class JsonParsingMap extends StatefulWidget {

  @override
  _JsonParsingMapState createState() => _JsonParsingMapState();
}

class _JsonParsingMapState extends State<JsonParsingMap> {
  Future<PostList> data;

  @override
  void initState(){
    super.initState();
    Network network = Network("https://jsonplaceholder.typicode.com/posts");
    data = network.loadPosts();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parsing JSON II"),
      ),
      body: Center(
        child: Container(
          child: FutureBuilder(builder: (context, AsyncSnapshot<PostList> snapshot){
            List<Post> allPosts;
            if(snapshot.hasData){
              allPosts = snapshot.data.posts;
              return Text("${allPosts[0].body}");
            } else {
              return CircularProgressIndicator();
            }

          }),
        ),
      ),
    );
  }
}


class Network {
  final String url;

  Network(this.url);

  Future<PostList> loadPosts() async{
    final response = await get(Uri.parse(url));
    
    if(response.statusCode == 200){
      //OK
      return PostList.fromJson(json.decode(response.body));
    } else{
      throw Exception("Failed to get posts");
    }
  }

}


