import 'package:flutter/material.dart';

import '../../model/weather_data_current.dart';

class CurrentWeatherWidget extends StatelessWidget {
  final WeatherDataCurrent weatherDataCurrent;
  const CurrentWeatherWidget({Key? key, required this.weatherDataCurrent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //temperature area
        temperatureAreaWidget(),

        //humidity area
        currentWeatherMoreDetailsWidget(),
      ],
    );
  }

  Widget currentWeatherMoreDetailsWidget() {
    return Container();
  }

  Widget temperatureAreaWidget() {
    return Row(
      children: [
        Text("hi"),
        // Image.asset("assets/weather/${weatherDataCurrent.current.weather![0].icon}.png"),
      ],
    );
  }
}
