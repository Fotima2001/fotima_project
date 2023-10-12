import 'package:nt_crm/app.dart';
import 'package:nt_crm/functions/select_gender.dart';
import 'package:nt_crm/functions/validator.dart';
import 'package:nt_crm/models/administrator.dart';

Administrator signUpAsAdministrator() {
  late bool isMale;
  var id = validator("ID");
  var firstName = validator("Ism");
  var lastName = validator("Familiya");
  var password = validator("Parol");
  isMale = selectGender();

  // var  = validator("Fan");

  return administratorRepository.createAdministrator(
    isMale: isMale,
    salary: 0,
    firstName: firstName,
    id: id,
    lastName: lastName,
    password: password,
  );
}
