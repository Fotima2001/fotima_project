// CTRL + .
// CMND + .
import 'package:nt_crm/models/authenticated_user.dart';

class Administrator extends AuthenticatedUser {
  final String id;
 
  final String password;
  final String? email;
  
  final int salary;

  const Administrator({
    required this.id,
    required super.firstName,
    required super.lastName,
    required this.password,
    required super.isMale,
    required this.salary,
    this.email,
  });

  Administrator copyWith({
    String? firstName,
    String? lastName,
    String? password,
    String? email,
    int? salary,
  }) {
    return Administrator(
      id: id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      password: password ?? this.password,
      isMale: isMale,
      salary: salary ?? this.salary,
      email: email ?? this.email,
    );
  }

  @override
  String toString() {
    return 'Student(id: $id, firstName: $firstName, lastName: $lastName, password: $password, email: $email, isMale: $isMale, salary: $salary)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Administrator &&
      other.id == id &&
      other.firstName == firstName &&
      other.lastName == lastName &&
      other.password == password &&
      other.email == email &&
      other.isMale == isMale &&
      other.salary == salary;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      firstName.hashCode ^
      lastName.hashCode ^
      password.hashCode ^
      email.hashCode ^
      isMale.hashCode ^
      salary.hashCode;
  }
}
