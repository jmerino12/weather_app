import 'dart:math';

import 'package:weather_app/network_expception.dart';
import 'package:weather_app/weather.dart';
import 'package:weather_app/weather_repository.dart';

class FakeWeatherRepositoryImpl implements WeatherRepository {
  @override
  Future<Weather> fetchWeather(String cityName) {
    return Future.delayed(const Duration(seconds: 1), () {
      final random = Random();

      /*if (random.nextBool()) {
        throw NetworkException();
      }*/

      return Weather(
          cityName: cityName,
          temperatureCelsius: 20 + random.nextInt(15) + random.nextDouble());
    });
  }
}
