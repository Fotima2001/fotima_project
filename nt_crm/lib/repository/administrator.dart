import '../models/administrator.dart';

// Alt Shif F - formatter
// Alt Shif L - formatter for JetBrains

/// Interface
abstract class AdministratorRepository {
  List<Administrator> administrator = [];

  factory AdministratorRepository() => AdministratorRepositoryImpl();

  Administrator createAdministrator({
    required String id,
    required String firstName,
    required String lastName,
    required String password,
    required bool isMale,
    required int salary,
  });

  bool deleteAdministrator(String id);

  bool updateAdministrator(String id, Administrator administrator);

  Administrator fetchAdministrator(String id, String password);

  List<Administrator> fetchAdministrators();
}

class AdministratorRepositoryImpl implements AdministratorRepository {
  @override
  List<Administrator> administrator = [];

  @override
  Administrator createAdministrator({
    required String id,
    required String firstName,
    required String lastName,
    required String password,
    required bool isMale,
    required int salary,
  }) {
    var newAdministrator = Administrator(
      id: id,
      firstName: firstName,
      lastName: lastName,
      password: password,
      isMale: isMale,
      salary: salary,
    );

    administrator.add(newAdministrator);

    return newAdministrator;
  }

  bool deleteAdministrator(String id) {
    late bool isDeleted;

    try {
      administrator.removeWhere((element) => element.id == id);
      isDeleted = true;
    } catch (e) {
      isDeleted = false;
    }

    return isDeleted;
  }

  @override
  Administrator fetchAdministrator(String id, String password) {
    var searchedAdministrator = administrator.firstWhere(
        (element) => element.id == id && element.password == password);
    return searchedAdministrator;
  }

  @override
  List<Administrator> fetchAdministrators() {
    return administrator;
  }

  @override
  bool updateAdministrator(String id, Administrator student) {
    // TODO: implement updateAdministrator
    throw UnimplementedError();
  }
  
  
}

