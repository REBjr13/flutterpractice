import 'package:flutter/material.dart';
import 'package:http/http.dart';

class JsonParsingSimple extends StatefulWidget {
  @override
  _JsonParsingSimpleState createState() => _JsonParsingSimpleState();
}

class _JsonParsingSimpleState extends State<JsonParsingSimple> {
  Future data;

  @override
  void initState() {
    super.initState();
    data = getData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Parsing JSON'),
        ),
        body: Container(
          child: ListView(
            children: [
              Center(child: Text("Robert")),
            ],
          ),
        ),
      ),
    );
  }

  Future getData() async {
    var data;
    var url = "https//jsonplaceholder.typeicode.com/posts";
    Network network = Network(url);

    data = network.fetchData();

    return data;
  }
}

class Network {
  final String url;

  Network(this.url);

  Future fetchData() async {
    print("$url");
    Response response = await get(Uri.encodeFull(url));

    if (response.statusCode == 200) {
      //Ok
      print(response.body);
      return response.body;
    } else {
      print(response.statusCode);
    }
  }
}
