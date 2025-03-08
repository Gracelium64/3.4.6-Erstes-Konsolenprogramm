import 'dart:async';
import 'dart:io';

void main () {

  String? userInput = null;
  int? number = null;
  String dblPnt = ':';

  Map<String, String> mainMenu = {
    '(a)' : 'View List',
    '(b)' : 'Complete a task',
    '(c)' : 'Add a Task',
    '(d)' : 'End program',
  };
  
  Map<int, String> toDoList = {};
  int taskId = toDoList.length;
  // int taskId = 0;
  // autoKey() {
  //   return ++taskId;
  // }

// // // // // // // // Splash Screen // // // // // // // // //
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
        // print('Gamify your life');
        // sleep(const Duration(seconds: 3));
        // print("\x1B[2J\x1B[0;0H");
        // sleep(const Duration(seconds: 2));

// // // // // // // // // Main Menu // // // // // // // // //
                                                              print("\x1B[2J\x1B[0;0H");
  print('Hello adventurer, what would you like to do?');
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
      print('');
          for (final allPrint in toDoList.entries)
          {print('${allPrint.key}: ${allPrint.value}');
          }
      print('');
      print('');
          for (final allPrint in mainMenu.entries) {
          print('${allPrint.key}: ${allPrint.value}');
          }
    case 'b' :  
      userInput = null;
          if (toDoList.length < 1) {
      sleep(const Duration(milliseconds: 300));
      print("\x1B[2J\x1B[0;0H");
      print('No quests available to complete!');
      sleep(const Duration(milliseconds: 2500));
      print("\x1B[2J\x1B[0;0H");
          for (final allPrint in mainMenu.entries) {
          print('${allPrint.key}: ${allPrint.value}');
          };
      } else{
          print("\x1B[2J\x1B[0;0H");
          sleep(const Duration(milliseconds: 300));
          print('Which good fortune have you brought from your adventures?');
          print('Which task have you completed?');
          print('');
            for (final allPrint in toDoList.entries) { 
                print('${allPrint.key}: ${allPrint.value}');
            }
          print('');
          print('');
            int? idDelete = int.tryParse(stdin.readLineSync() ?? '');
              if (toDoList.containsKey(idDelete)) {
                  toDoList.remove(idDelete);
                  // taskId--;
                  print('Good Job!');
                  sleep(const Duration(milliseconds: 1000));
                  print("\x1B[2J\x1B[0;0H");
              for (final allPrint in mainMenu.entries) {
                print('${allPrint.key}: ${allPrint.value}');
              } ;
            }
        }
    case 'c' :  
      userInput = null;
      print("\x1B[2J\x1B[0;0H");
      sleep(const Duration(milliseconds: 300));
      print('Enter name of new adventure');
      print('');
        if (taskId >= toDoList.length) {
          ++taskId;
        } 
        String task = stdin.readLineSync()!;
        toDoList[taskId] = task;
      sleep(const Duration(milliseconds: 300));
      print("\x1B[2J\x1B[0;0H");
      print('Quest added!');
        // taskId++;
      sleep(const Duration(milliseconds: 1000));
      print("\x1B[2J\x1B[0;0H");
              for (final allPrint in mainMenu.entries) {
                print('${allPrint.key}: ${allPrint.value}');
              } ;
    case 'd' : print("\x1B[2J\x1B[0;0H");
      sleep(const Duration(milliseconds: 300));
      print('Ok now bye bye than!');
      sleep(const Duration(seconds: 2));
      print("\x1B[2J\x1B[0;0H");
    default : userInput = null;
      print('***Error***');
      print('Press "a" to continue');
      }
    }
  }
}