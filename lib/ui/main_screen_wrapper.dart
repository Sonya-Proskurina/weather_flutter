
import 'package:flutter/cupertino.dart';
import 'package:weather_flutter/network/weather.dart';
import 'package:weather_flutter/ui/weather_card.dart';
import 'hourly_weather.dart';

class MainScreenWrapper extends StatelessWidget {
  final Weather weather;
  final List<Weather> hourlyWeather;

  const MainScreenWrapper({required Key? key, required this.weather, required this.hourlyWeather})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text(
          weather.cityName,
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        Text(
            '${weather.description}'),
        Spacer(),
        WeatherCard(
          title: "Сейчас",
          temperature: weather.temperature,
          iconCode: weather.iconCode,
          temperatureFontSize: 64,
          iconScale: 1,
          key: null,
        ),
        Spacer(),
        HourlyWeather(
          hourlyWeather: this.hourlyWeather,
          key: null,)
      ]),
    );
  }
}