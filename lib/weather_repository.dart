import 'package:weather_app/weather.dart';

abstract class WeatherRepository {
  Future<Weather> fetchWeather(String cityName);
}
