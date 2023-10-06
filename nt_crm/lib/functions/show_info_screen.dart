import 'dart:io';

import 'package:nt_crm/functions/clear_terminal.dart';
import 'package:nt_crm/functions/edit_profile.dart';
import 'package:nt_crm/functions/show_menu.dart';
import 'package:nt_crm/functions/terminate_app.dart';
import 'package:nt_crm/app.dart';

void showInfoScreen() {
  String? input = stdin.readLineSync();

  if (input == null) {
    print("Siz hech qanday buyruq kiritmadingiz!");
  } else {
    // Yaroqsiz qiymat kiritish
    var parsedInput = int.tryParse(input);

    if (parsedInput == null) {
      print("Siz yaroqsiz qiymat kiritdingiz!");
    } else {
      clearTerminal();
      if (parsedInput <= 4 && parsedInput >= 1) {
        switch (parsedInput) {
          case 1:
          // TODO 4: fix
            print(authenticatedUser);
            stdin.readLineSync();
            break;
          case 2:
          // TODO 4: fix
            authenticatedUser = editProfile();
            break;
          case 3:
           // TODO 4: fix
            authenticatedUser = null;
            break;
          case 4:
            isTerminated = terminateApp();
            break;
          default:
        }
      } else {
        print("Siz kiritgan buyruq mavjud emas!");
      }
    }
  }
}
