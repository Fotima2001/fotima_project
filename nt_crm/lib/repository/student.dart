import 'package:nt_crm/models/authenticated_user.dart';

import '../models/student.dart';

// Alt Shif F - formatter
// Alt Shif L - formatter for JetBrains

/// Interface
abstract class StudentRepository {
  List<Student> students = [];

  factory StudentRepository() => StudentRepositoryImpl();

  get administrator => null;

  get teacher => null;

  Student createStudent({
    required String id,
    required String firstName,
    required String lastName,
    required String password,
    required bool isMale,
    required String course,
  });

  bool deleteStudent(String id);

  bool updateStudent(String id, Student student);

  Student fetchStudent(String id, String password);

  List<Student> fetchStudents();

  AuthenticatedUser? fetchAdministrator(String id, String password) {}
}

class StudentRepositoryImpl implements StudentRepository {
  @override
  List<Student> students = [];

  @override
  Student createStudent({
    required String id,
    required String firstName,
    required String lastName,
    required String password,
    required bool isMale,
    required String course,
  }) {
    var newStudent = Student(
      id: id,
      firstName: firstName,
      lastName: lastName,
      password: password,
      isMale: isMale,
      course: course,
    );

    students.add(newStudent);

    return newStudent;
  }

  @override
  bool deleteStudent(String id) {
    late bool isDeleted;

    try {
      students.removeWhere((element) => element.id == id);
      isDeleted = true;
    } catch (e) {
      isDeleted = false;
    }

    return isDeleted;
  }

  @override
  Student fetchStudent(String id, String password) {
    var searchedStudent = students.firstWhere(
        (element) => element.id == id && element.password == password);
    return searchedStudent;
  }

  @override
  List<Student> fetchStudents() {
    return students;
  }

  @override
  bool updateStudent(String id, Student student) {
    // TODO: implement updateStudent
    throw UnimplementedError();
  }
  
  @override
  // TODO: implement administrator
  get administrator => throw UnimplementedError();
  
  @override
  AuthenticatedUser? fetchAdministrator(String id, String password) {
    // TODO: implement fetchAdministrator
    throw UnimplementedError();
  }
  
  @override
  // TODO: implement teacher
  get teacher => throw UnimplementedError();
}
