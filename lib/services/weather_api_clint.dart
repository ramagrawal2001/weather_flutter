import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather/model/weather_model.dart';

class weatherApiClient {
  Future<Weather>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=6853072a9e21d907729b203aa0c123ff&units=metric");
    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(Weather.fromJson(body).temp);
    return Weather.fromJson(body);
  }
}
