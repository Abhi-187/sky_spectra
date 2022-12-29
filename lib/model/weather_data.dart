import 'package:weatherapp_starter_project/model/weather_data_current.dart';

class WeatherData {
  final WeatherDataCurrent? current;

  WeatherData([this.current]);

  //function to fetch these values
  getWeatherDataCurrent() {
    return current;
  }
}
