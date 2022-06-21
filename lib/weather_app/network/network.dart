import 'dart:convert';

import 'package:flutter_application/weather_app/model/weather_forecast_model.dart';
import 'package:http/http.dart';

import '../util/forecast_util.dart';

class Network {
  Future<WeatherForecastModel> getWeatherForecast(
      {required String cityName}) async {
    var finalUrl = "https://api.openweathermap.org/data/2.5/weather?q=" +
        cityName +
        "&appid=" +
        Util.appId +
        "";

    final response = await get(Uri.parse(finalUrl));
    print("URL:${Uri.parse(finalUrl)}");

    if (response.statusCode == 200) {
      print('weather data: ${response.body}');
      return WeatherForecastModel.fromJson(json.decode(
          response.body)); //we get the actual mapped Model (dart Object)
    } else {
      throw Exception("Error getting data");
    }
  }
}
