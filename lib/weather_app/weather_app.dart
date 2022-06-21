import 'package:flutter/material.dart';

import 'model/weather_forecast_model.dart';
import 'network/network.dart';

class Weather_App extends StatefulWidget {
  @override
  State<Weather_App> createState() => _Weather_AppState();
}

class _Weather_AppState extends State<Weather_App> {
  late Future<WeatherForecastModel> forecastObject;
  String _cityName = "Porto";
  @override
  void initState() {
    super.initState();
    forecastObject = Network().getWeatherForecast(cityName: _cityName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Weather Forecast")),
        body: Center(child: CircularProgressIndicator()));
  }
}
