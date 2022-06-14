// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter_application/ui/util/colors.dart';
// import 'package:http/http.dart';

// class JsonParsingSimple extends StatefulWidget {
//   @override
//   _JsonParsingSimpleState createState() => _JsonParsingSimpleState();
// }

// class _JsonParsingSimpleState extends State<JsonParsingSimple> {
//   Future data;

//   @override
//    void initState() {
//      super.initState();
//     data = getData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: secondaryBGreyDark,
//           title: Text('Parsing JSON'),
//         ),
//          body: Center(
//            child: Container(
//                 child: FutureBuilder(
//                    future: getData(),
//                      builder: (context, AsyncSnapshot snapshot) {
//                        if (snapshot.hasData) {
//                         return createListView(snapshot.data, context);
//                        }
//                       return CircularProgressIndicator();
//                     }))),
//       ),
//     );
//   }
// }

//    Future getData() async {
//      Future data;
//     String url = "https://jsonplaceholder.typicode.com/posts";
//      Network network = Network(url);
//     data = network.fetchData();
//      data.then((value)
//     {
//  print(value );
//  });
//      return data;
//    }
 

//  Widget createListView(List data, BuildContext context){
//   return Container(
//      child: ListView.builder(
//     itemCount: data.length,
//         itemBuilder: (context, int index){
//      return Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//        children: [
//            Divider(height: 1),
//            ListTile(
//             title: Text("${data[index]["body"]}"),
//              trailing: Text("${data[index]['id']}"),
//              subtitle: Text('${data[index][["body"]]}'),
//             leading: Column(
//                children: [
//                  CircleAvatar(
//                    backgroundColor: Colors.black12,
//                    radius: 23.0,
//                    child: Text('${data[index]['id']}')

//                 )
//              ],
//             ),
//           )
//         ],
//       );
//     }

//       ),
//   );
//  }






// class Network{
//   final String url;
//   Network(this.url)
  
//  Future fetchData() async {
//    print("$UriData.fromUri(uri)");
//    Response response = await get(Uri.parse('$UriData.fromUri(uri)'));

//    if (response.statusCode == 200) {
//      //Ok
//      print(response.body);
//      return json.decode(response.body);
//    } else {
//      print(response.statusCode);
//   }
//  }
// }