import 'dart:async';
import 'dart:io';

void main () {

  String? userInput = null;
  String dblPnt = ':';
  // int? input = 0;

  Map<String, String> mainMenu = {
    '(a)' : 'View List',
    '(b)' : 'Complete a task',
    '(c)' : 'Add a Task',
    '(d)' : 'Delete a task',
    '(e)' : 'End program',
  };
  
  Map<String, String> toDoList = {
    '1' : 'Start by adding a task',
    '2' : 'And than mark the first task as completed',
    '3' : 'sdg',
  };

// // // // // // // // Splash Screen // // // // // // // // //
        print("\x1B[2J\x1B[0;0H");
        print('Initializing');
        sleep(const Duration(milliseconds: 300));
        print("\x1B[2J\x1B[0;0H");
        print('Initializing');
        sleep(const Duration(milliseconds: 300));
        print("\x1B[2J\x1B[0;0H");
        print('Initializing.');
        sleep(const Duration(milliseconds: 300));
        print("\x1B[2J\x1B[0;0H");
        print('Initializing..');
        sleep(const Duration(milliseconds: 300));
        print("\x1B[2J\x1B[0;0H");
        print('Initializing...');
        sleep(const Duration(milliseconds: 300));
        print("\x1B[2J\x1B[0;0H");
        print('Initializing....');
        sleep(const Duration(milliseconds: 500));
        print("\x1B[2J\x1B[0;0H");
        sleep(const Duration(seconds: 2));
        print('Organic Interface Studios');
        sleep(const Duration(seconds: 3));
        print('Attention Deficit oH Dear v0.1');
        sleep(const Duration(seconds: 3));
        print("\x1B[2J\x1B[0;0H");
        sleep(const Duration(seconds: 2));

// // // // // // // // // Main Menu // // // // // // // // //
                                                              print("\x1B[2J\x1B[0;0H");
  print('Hello adventurer, what would you like to do?');
  // print('Type a number to choose an action');
  print('');
  print('Main Menu');
  sleep(const Duration(milliseconds: 500));
    for (final allPrint in mainMenu.entries) {
      print('${allPrint.key}: ${allPrint.value}');
  }
  
  while (userInput == null) {
  userInput = stdin.readLineSync();
  
  
    if (userInput == null) {
    print('a');
    } else {
  switch (userInput) {
    case 'a' : 
    userInput = null;
    print("\x1B[2J\x1B[0;0H");
    sleep(const Duration(milliseconds: 300));
    print('Quests available:');
    print('${toDoList.length} / 10');
    print('');
            for (final allPrint in toDoList.entries)
            { 
              print('${allPrint.key}'+' $dblPnt '+' ${allPrint.value}');
            }
            print('');
            print('');
            for (final allPrint in mainMenu.entries) {
      print('${allPrint.key}: ${allPrint.value}');
  }
    case 'b' :  
    userInput = null;
    print("\x1B[2J\x1B[0;0H");
    sleep(const Duration(milliseconds: 300));
    print('Which good fortune have you brought from your adventures?');
    print('Which task have you completed?');
    print('');
            for (final allPrint in toDoList.entries)
            { 
              print('${allPrint.key}'+' $dblPnt '+' ${allPrint.value}');
            }
            print('');
            print('');
            for (final allPrint in mainMenu.entries) {
      print('${allPrint.key}: ${allPrint.value}');
  } ;
    case 'c' :  
    userInput = null;
    print("\x1B[2J\x1B[0;0H");
    sleep(const Duration(milliseconds: 300));
    print('Enter name of new adventure');
    print('');
    //             for (final allPrint in toDoList.entries)
    //         { 
    //           print('${allPrint.key}'+' $dblPnt '+' ${allPrint.value}');
    //         }
            print('');
            print('');
            for (final allPrint in mainMenu.entries) {
      print('${allPrint.key}: ${allPrint.value}');
  } ;
    case 'd' :  
    userInput = null;
    print("\x1B[2J\x1B[0;0H");
    sleep(const Duration(milliseconds: 300));
    print('Only a fool ignores an adventure');
    print('Oh well, what quest has failed you?');
    print('');
                for (final allPrint in toDoList.entries)
            { 
              print('${allPrint.key}'+' $dblPnt '+' ${allPrint.value}');
            }
            print('');
            print('');
            for (final allPrint in mainMenu.entries) {
      print('${allPrint.key}: ${allPrint.value}');
  } ;
    case 'e' : print("\x1B[2J\x1B[0;0H");
    sleep(const Duration(milliseconds: 300));
    print('Ok now bye bye than!');
        sleep(const Duration(seconds: 2));
        print("\x1B[2J\x1B[0;0H");
    case '1' : //delete this number of entry from list
              //back to main menu print 
              // X 10
    
    default : userInput = null;
              print('Please type a valid number from the list darling');
           }
    }
  }



}