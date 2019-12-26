import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

const apiKey = '6613dd8d3eb3d0400031e26f613fbe21';
const url = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getLocationWeather() async {
    Location loc = Location();
    await loc.getCurrentLocation();

    NetworkHelper network = NetworkHelper(url +
        '?lat=${loc.latitude}&lon=${loc.longitude}&appid=$apiKey&units=metric');
    return await network.getData();
  }

  Future<dynamic> getCityWeather(String cityName) async {
    Location loc = Location();
    await loc.getCurrentLocation();

    NetworkHelper network =
        NetworkHelper(url + '?q=$cityName&appid=$apiKey&units=metric');
    return await network.getData();
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
