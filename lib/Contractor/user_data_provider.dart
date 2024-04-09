import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class UserDataContractor {
  final String? location;
  final String? jobType;
  final String? constructionDetails;
  final String? name;
  final String? phoneNumber;

  UserDataContractor({
    this.location,
    this.jobType,
    this.constructionDetails,
    this.name,
    this.phoneNumber,
  });
}
class UserDataProviderContractor extends ChangeNotifier {
  List<UserDataContractor> _usersData = [];

  List<UserDataContractor> get usersData => _usersData;

  void addUser(UserDataContractor userData) {
    _usersData.add(userData);
    notifyListeners();
  }


   void removeUser(UserDataContractor userData) {
    _usersData.remove(userData);
    notifyListeners();
  }
}
