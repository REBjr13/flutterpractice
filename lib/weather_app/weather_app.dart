import 'package:flutter/material.dart';
import 'package:flutter_application/weather_app/ui/mid_view.dart';
import 'model/weather_forecast_model.dart';
import 'network/network.dart';

class Weather_App extends StatefulWidget {
  @override
  State<Weather_App> createState() => _Weather_AppState();
}

class _Weather_AppState extends State<Weather_App> {
  late Future<WeatherForecastModel> forecastObject;
  String _cityName = "";
  @override
  void initState() {
    super.initState();
    forecastObject = getWeather(cityName: _cityName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      textFieldView(),
      Container(
          child: FutureBuilder<WeatherForecastModel>(
              future: forecastObject,
              builder: (BuildContext context,
                  AsyncSnapshot<WeatherForecastModel> snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: [midView(snapshot)],
                  );
                } else {
                  return Container(
                      child: Center(child: CircularProgressIndicator()));
                }
              })),
    ]));
  }

  Widget textFieldView() {
    return Container(
        child: TextField(
      decoration: InputDecoration(
          hintText: "Enter name",
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          contentPadding: EdgeInsets.all(8)),
      onSubmitted: (value) {
        setState(() {
          _cityName = value;
          forecastObject = getWeather(cityName: _cityName);
        });
      },
    ));
  }

  Future<WeatherForecastModel> getWeather({required String cityName}) =>
      new Network().getWeatherForecast(cityName: _cityName);
}
