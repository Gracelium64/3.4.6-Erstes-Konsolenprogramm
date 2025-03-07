import 'dart:io';

void main () {
  
  int? number = null;

  while (number == null) {
  print('Please input a number');
  number = int.tryParse(stdin.readLineSync() ?? '');
    if (number == null) {
      print('This is not a number');
      print('Please try again');
    }
  }
  print(number + number);

}