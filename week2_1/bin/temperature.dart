import 'dart:io';
import 'package:temperature/temperature.dart' as temperature;

void main(List<String> arguments) {
  print("Enter celsius number: ");
  double? c = double.parse(stdin.readLineSync()!);

  print(temperature.celsiusToFahrenheit(c));

  print("Enter fahrenheit number: ");
  double? f = double.parse(stdin.readLineSync()!);
  print(temperature.fahrenheitToCelsius(f));
}
