import 'dart:convert';
import 'package:weatherapp_starter_project/model/weather_data_current.dart';
import 'package:weatherapp_starter_project/model/weather_data.dart';
import 'package:http/http.dart' as http;

import 'api_key.dart';

class FetchWeatherAPI {
  WeatherData? _weatherData;

  //processing the data from the API
  Future<WeatherData> processData(lat, lon) async {
    var response = await http.get(Uri.parse(apiURL(lat, lon)));
    var jsonString = jsonDecode(response.body);
    _weatherData = WeatherData(WeatherDataCurrent.fromJson(jsonString));

    return _weatherData!;
  }
}

String apiURL(var lat, var lon) {
  String url;
  url =
      "https://api.openweathermap.org/data/3.0/onecall?lat=$lat&lon=$lon&appid=$apiKey&units=metric&exlude=minutely";
  return url;
}
