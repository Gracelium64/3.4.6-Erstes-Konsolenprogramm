import 'dart:async';
import 'dart:io';

void main () {

  int? userInputNumber = null;
  int? input = 0;

  Map<int, String> mainMenu = {
    1 : 'View List',
    2 : 'Complete a task',
    3 : 'Add a Task',
    4 : 'Delete a task',
    666 : 'End program from every menu',
  };
  
  Map<int, String> toDoList = {
    1 : 'Add a task',
    2 : 'Delete a Task',
  };

// // // // // // // // // Splash Screen // // // // // // // // //
        // print("\x1B[2J\x1B[0;0H");
        // print('Initializing');
        // sleep(const Duration(milliseconds: 300));
        // print("\x1B[2J\x1B[0;0H");
        // print('Initializing');
        // sleep(const Duration(milliseconds: 300));
        // print("\x1B[2J\x1B[0;0H");
        // print('Initializing.');
        // sleep(const Duration(milliseconds: 300));
        // print("\x1B[2J\x1B[0;0H");
        // print('Initializing..');
        // sleep(const Duration(milliseconds: 300));
        // print("\x1B[2J\x1B[0;0H");
        // print('Initializing...');
        // sleep(const Duration(milliseconds: 300));
        // print("\x1B[2J\x1B[0;0H");
        // print('Initializing....');
        // sleep(const Duration(milliseconds: 500));
        // print("\x1B[2J\x1B[0;0H");
        // sleep(const Duration(seconds: 2));
        // print('Organic Interface Studios');
        // sleep(const Duration(seconds: 3));
        // print('Attention Deficit oH Dear v0.1');
        // sleep(const Duration(seconds: 3));
        // print("\x1B[2J\x1B[0;0H");
        // sleep(const Duration(seconds: 2));

// // // // // // // // // Main Menu // // // // // // // // //
                                                              print("\x1B[2J\x1B[0;0H");
  print('Hello adventurer, what would you like to do?');
  print('Type a number to choose an action');
  print('');
  print('Main Menu');
  // sleep(const Duration(seconds: 2));
    for (final allPrint in mainMenu.entries) {
      print('${allPrint.key}: ${allPrint.value}');
  }
  
  while (userInputNumber == null) {
  userInputNumber = int.tryParse(stdin.readLineSync() ?? '');
  
  
    if (userInputNumber == null) {
    print('This is not a number');
    print('Please try again');
    } else {
  switch (userInputNumber) {
    case 1 : 
    userInputNumber = null;
            for (final allPrint in toDoList.entries)
            {print('${allPrint.key}: ${allPrint.value}');
            }
    // case 2 : _ ;
    // case 3 : _ ;
    // case 4 : _ ;
    case 666 : print('Ok now bye bye than!');
    default : userInputNumber = null;
              print('Please type a valid number from the list darling');
       }
    }
  }



}