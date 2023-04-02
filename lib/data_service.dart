import 'package:http/http.dart' as http;

// https://api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}

class DataService {

  void getWeather(String city) async {

    final queryParameters = {
      'q': city,
      'appid': '29d6a6996e6ad2e669d2eeb133cedcd0'
    };

    final uri = Uri.https(
        'api.openweathermap.org', '/data/2.5/weather', queryParameters);

    final response= await http.get(uri);

    print(response.body);
  }
}
