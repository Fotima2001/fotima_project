import 'package:nt_crm/functions/show_menu.dart';
import 'package:nt_crm/models/authenticated_user.dart';
import 'package:nt_crm/repository/student.dart';
import 'package:nt_crm/repository/teacher.dart';
import 'package:nt_crm/repository/administrator.dart';

AuthenticatedUser? authenticatedUser;
late StudentRepository repository;
late TeacherRepository teacherRepository;
late AdministratorRepository administratorRepository;
bool isTerminated = false;
void runApp() {
  repository = StudentRepository();
  teacherRepository = TeacherRepository();
  administratorRepository = AdministratorRepository();
  showMenu();

  // TODO1: Make back work in registeration
  // TODO2: Signin as a teacher
  // TODO3: Print menu for printing teachers and students or administrator
}

