import 'weather.dart';

//intance for geetting data from api

class WeatherDataCurrent {
  final Current current;

  WeatherDataCurrent(this.current);

  factory WeatherDataCurrent.fromJson(Map<String, dynamic> json) {
    return WeatherDataCurrent(
      Current.fromJson(json['current']),
    );
  }
}

class Current {
  Current({
    required this.temp,
    required this.humidity,
    required this.clouds,
    required this.windSpeed,
    required this.windDeg,
    required this.weather,
  });

  late final double temp;
  late final int humidity;
  late final int clouds;
  late final double windSpeed;
  late final int windDeg;
  late final List<Weather> weather;

  Current.fromJson(Map<String, dynamic> json) {
    temp = json['temp'];

    humidity = json['humidity'];

    clouds = json['clouds'];
    windSpeed = json['wind_speed'];
    windDeg = json['wind_deg'];
    weather =
        List.from(json['weather']).map((e) => Weather.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};

    _data['temp'] = temp;

    _data['humidity'] = humidity;
    _data['clouds'] = clouds;
    _data['wind_speed'] = windSpeed;
    _data['wind_deg'] = windDeg;
    _data['weather'] = weather.map((e) => e.toJson()).toList();
    return _data;
  }
}

class weather {
  weather({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });
  late final int id;
  late final String main;
  late final String description;
  late final String icon;

  weather.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    main = json['main'];
    description = json['description'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['main'] = main;
    _data['description'] = description;
    _data['icon'] = icon;
    return _data;
  }
}
