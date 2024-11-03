import 'package:flutter/material.dart';

// Enum for weather conditions
enum WeatherCondition { sunny, rainy, cloudy, snowy }

class WeatherForecast extends StatelessWidget {
  final WeatherCondition weatherCondition;
  final double minTemperature;
  final double maxTemperature;
  final String dayOfWeek;

  const WeatherForecast({
    super.key,
    required this.weatherCondition,
    required this.minTemperature,
    required this.maxTemperature,
    required this.dayOfWeek,
  });
  // Method to get color based on weather condition
  Color _getBackgroundColor() {
    switch (weatherCondition) {
      case WeatherCondition.sunny:
        return Colors.yellow[200]!;
      case WeatherCondition.rainy:
        return Colors.blue[200]!;
      case WeatherCondition.cloudy:
        return Colors.grey[300]!;
      case WeatherCondition.snowy:
        return Colors.white;
    }
  }

  // Method to get icon based on weather condition
  IconData _getWeatherIcon() {
    switch (weatherCondition) {
      case WeatherCondition.sunny:
        return Icons.circle;
      case WeatherCondition.rainy:
        return Icons.beach_access; // Rainy icon
      case WeatherCondition.cloudy:
        return Icons.cloud;
      case WeatherCondition.snowy:
        return Icons.ac_unit;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      color: _getBackgroundColor(),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dayOfWeek,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      _getWeatherIcon(),
                      size: 30,
                      color: Colors.black54,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '${maxTemperature.toStringAsFixed(0)}°',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '${minTemperature.toStringAsFixed(0)}°',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // Optionally, you can add more information on the right side
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Weather Forecast',
    home: Scaffold(
      appBar: AppBar(
        title: Text('Weekly Weather Forecast'),
      ),
      body: ListView(
        children: const [
          WeatherForecast(
            weatherCondition: WeatherCondition.sunny,
            minTemperature: 15.0,
            maxTemperature: 25.0,
            dayOfWeek: 'Sun',
          ),
          WeatherForecast(
            weatherCondition: WeatherCondition.sunny,
            minTemperature: 12.0,
            maxTemperature: 18.0,
            dayOfWeek: 'Mon',
          ),
          WeatherForecast(
            weatherCondition: WeatherCondition.cloudy,
            minTemperature: 9.0,
            maxTemperature: 17.0,
            dayOfWeek: 'Tue',
          ),
          WeatherForecast(
            weatherCondition: WeatherCondition.cloudy,
            minTemperature: 8.0,
            maxTemperature: 14.0,
            dayOfWeek: 'Wed',
          ),
          WeatherForecast(
            weatherCondition: WeatherCondition.snowy,
            minTemperature: 5.0,
            maxTemperature: 10.0,
            dayOfWeek: 'Thu',
          ),
          WeatherForecast(
            weatherCondition: WeatherCondition.sunny,
            minTemperature: 4.0,
            maxTemperature: 12.0,
            dayOfWeek: 'Fri',
          ),
          WeatherForecast(
            weatherCondition: WeatherCondition.sunny,
            minTemperature: 3.0,
            maxTemperature: 15.0,
            dayOfWeek: 'Sat',
          ),
        ],
      ),
    ),
  ));
}
