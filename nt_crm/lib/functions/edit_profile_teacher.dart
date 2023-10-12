import 'package:nt_crm/conts/constants.dart';
import 'package:nt_crm/functions/clear_terminal.dart';
import 'package:nt_crm/functions/validator.dart';
import 'package:nt_crm/app.dart';
import 'package:nt_crm/models/teacher.dart';

Teacher editProfileTeacher() {
  bool isTerminated = false;
  final int index = repository.teacher.indexOf(authenticatedUser! as Teacher);
  do {
    clearTerminal();
    print(AppConstans.editProfileText);

    var input = validator("Buyruq");

    final int task = int.tryParse(input) ?? -1;

    if (task >= 0 || task < 5) {
      switch (task) {
        case 0:
          isTerminated = true;
          break;
        case 1:
          final firstName = validator("Ism");
          authenticatedUser = (authenticatedUser! as Teacher).copyWith(firstName: firstName);
          break;
        case 2:
          final lastName = validator("Familiya");
          authenticatedUser = (authenticatedUser! as Teacher).copyWith(lastName: lastName);
          break;
        case 3:
          final password = validator("Parol");
          authenticatedUser = (authenticatedUser! as Teacher).copyWith(password: password);
          break;
        case 4:
          final email = validator("Email");
          authenticatedUser = (authenticatedUser! as Teacher).copyWith(email: email);
          break;
        
      }
    } else {
      print("Noto'g'ri buyruq kiritdingiz! Iltimos, qayta urinib ko'ring");
    }
  } while (!isTerminated);
  
  repository.teacher[index] = authenticatedUser! as Teacher;
  return authenticatedUser as Teacher;
}
