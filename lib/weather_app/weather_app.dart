import 'package:flutter/material.dart';

class Weather_App extends StatefulWidget {

  @override
  State<Weather_App> createState() => _Weather_AppState();
}

class _Weather_AppState extends State<Weather_App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Weather Forecast")),
        body: Center(child: CircularProgressIndicator()));
  }
}
