import 'package:dio/dio.dart';
import 'package:simple_weather/domain/models/weather_model.dart';

class WeatherRepository {
  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
    //http://api.weatherapi.com/v1/current.json?key=f8cef05d076a409f853153615233008&q=Żary&aqi=no
    final response = await Dio().get(
        'http://api.weatherapi.com/v1/current.json?key=f8cef05d076a409f853153615233008&q=Żary&aqi=no');
    print(response.data);
    return const WeatherModel(city: 'Warsaw', temperature: -5.5);
  }
}
