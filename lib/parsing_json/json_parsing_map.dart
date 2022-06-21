// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter_application/model/post.dart';
// import 'package:http/http.dart';

// import '../ui/util/colors.dart';

// class JsonParsingMap extends StatefulWidget {
//   @override
//   _JsonParsingMapState createState() => _JsonParsingMapState();
// }

// class _JsonParsingMapState extends State<JsonParsingMap> {
//   Future<PostList> data;

//   @override
//   void initState() {
//     super.initState();
//     Network network = Network("https://jsonplaceholder.typicode.com/posts");
//     data = network.loadPosts();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Parsing JSON II"),backgroundColor: secondaryBGreyDark,
//       ),
//       body: Center(
//         child: Container(
//           child: FutureBuilder(
//               future: data,
//               builder: (context, AsyncSnapshot<PostList> snapshot) {
//                 List<Post> allPosts;
//                 if (snapshot.hasData) {
//                   allPosts = snapshot.data.posts;
//                   return createListView(allPosts, context);
//                 } else {
//                   return CircularProgressIndicator(backgroundColor: secondaryBGreyDark,);
//                 }
//               }),
//         ),
//       ),
//     );
//   }
// }

// Widget createListView(List data, BuildContext context) {
//   return Container(
//     child: ListView.builder(
//         itemCount: data.length,
//         itemBuilder: (context, int index) {
//           return Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Divider(height: 1),
//               ListTile(
//                 title: Text("${data[index].title}"),
//                 trailing: Text("${data[index].id}"),
//                 subtitle: Text('${data[index].body}'),
//                 leading: Column(
//                   children: [
//                     CircleAvatar(
//                         backgroundColor: Colors.black12,
//                         radius: 23.0,
//                         child: Text('${data[index].id}'))
//                   ],
//                 ),
//               )
//             ],
//           );
//         }),
//   );
// }

// class Network {
//   final String url;

//   Network(this.url);

//   Future<PostList> loadPosts() async {
//     final response = await get(Uri.parse(url));

//     if (response.statusCode == 200) {
//       //OK
//       return PostList.fromJson(json.decode(response.body));
//     } else {
//       throw Exception("Failed to get posts");
//     }
//   }
// }
