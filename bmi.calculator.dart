import 'dart:io';

void main () {

  double? kgNumber = null;
  double? heightNumber = null;

  print('Welcome to BMI Calculator');
    while (kgNumber == null) {
    print('How much do you weigh? (Kilograms!)');
    print('No freedom units please');
    kgNumber = double.tryParse(stdin.readLineSync() ?? '');
      if (kgNumber == null) {
        print('');
        print('This is not a number');
        print('Please try again');
        print('');
      }
  }
  print('');
  print('T.hanks!');
  print('');
    while (heightNumber == null) {
  print('What is your height? (Meters!)');
  print('No freedom units please');
    heightNumber = double.tryParse(stdin.readLineSync() ?? '');
      if (heightNumber == null) {
        print('');
        print('This is not a number');
        print('Please try again');
        print('');
      }
  }
  print('');
  print('T.hanks!');
  print('');
  double bmi = kgNumber / (heightNumber * heightNumber);
  print('Your BMI is $bmi');
  


}