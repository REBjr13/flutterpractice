import 'package:flutter/material.dart';
import 'package:flutter_application/ui/util/colors.dart';
import 'package:flutter_application/weather_app/model/weather_forecast_model.dart';

Widget midView(AsyncSnapshot<WeatherForecastModel> snapshot) {
  var forecastList = snapshot.data?.weather;
  var name = snapshot.data?.name;
  var country = snapshot.data?.sys?.country;
  var lat2 = snapshot.data?.coord?.lat;
  var lon2 = snapshot.data?.coord?.lon;
  Container midView = Container(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
        Text(
          "$name, $country",
          style: TextStyle(
              fontWeight: FontWeight.w800, fontSize: 18, color: Colors.black54),
        ),
      Text('Lat: $lat2,Lon: $lon2')
    ],
  ),
      ));
  return midView;
}
