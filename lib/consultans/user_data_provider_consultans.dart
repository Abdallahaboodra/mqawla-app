import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserDataConsultant {
  final String? jobType;

  final String? name;
  final String? phoneNumber;

  UserDataConsultant({
    this.jobType,
    this.name,
    this.phoneNumber,
  });
}

class UserDataProviderConsultant extends ChangeNotifier {
  List<UserDataConsultant> _usersData = [];

  List<UserDataConsultant> get usersData => _usersData;

  void addUser(UserDataConsultant userData) {
    _usersData.add(userData);
    notifyListeners();
  }

  void removeUser(UserDataConsultant userData) {
    _usersData.remove(userData);
    notifyListeners();
  }
}
