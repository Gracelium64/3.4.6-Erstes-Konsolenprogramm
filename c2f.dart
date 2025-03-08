import 'dart:io';

void main () {

  print("\x1B[2J\x1B[0;0H");

  double? celciusInput = null;
  double? fahrenheitInput = null;
  double resultC = 0;
  double resultF = 0;

  print('Welcome to Celcius2FreedomUnits Calculator');
  print('');
    while (celciusInput == null) {
    print('Please enter Celcius Value');
    print('If you want to calculate to Celcius, enter 0');
    celciusInput = double.tryParse(stdin.readLineSync() ?? '');
      if (celciusInput == null) {
        print('');
        print('This is not a number');
        print('Please try again');
        print('');
      }
  }
  print('');
  print('T.hanks!');
        sleep(const Duration(milliseconds: 300));
        print("\x1B[2J\x1B[0;0H");
    while (fahrenheitInput == null) {
  print('Welcome to Celcius2FreedomUnits Calculator');
  print('');
  print('Please enter Fahrenheit Value');
  print('If you want to calculate to Fahrenheit, enter 0');
    fahrenheitInput = double.tryParse(stdin.readLineSync() ?? '');
      if (fahrenheitInput == null) {
        print('');
        print('This is not a number');
        print('Please try again');
        print('');
      }
  }
  print('');
  print('T.hanks!');
        sleep(const Duration(milliseconds: 300));
        print("\x1B[2J\x1B[0;0H");

    if (celciusInput == 0 && fahrenheitInput == 0) {
      return (main());
    } else if (celciusInput != 0 && fahrenheitInput != 0){
      return (main());
    } else if (celciusInput == 0) {
      resultC = (5 / 9) * (fahrenheitInput - 32);
      print('$fahrenheitInput Freedom Units are $resultC Celcius');
    } else if (fahrenheitInput == 0) {
      resultF = (9 / 5) * celciusInput + 32;
      print('$resultC Celcius is $resultF Freedom Units');
    }
}