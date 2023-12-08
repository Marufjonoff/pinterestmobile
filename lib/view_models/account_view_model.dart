import 'package:flutter/material.dart';
import 'package:pinterestmobile/models/user_model.dart';
import 'package:pinterestmobile/services/data_service.dart';

class AccountViewModel extends ChangeNotifier {
  Object object = Object();
  String name = "qwerty";
  String email = "qwerty@gmail.com";
  int followers = 12;
  int followings = 17;
  final defaultImage = [];
  bool loading = true;

  Future<void> loadUsers() async {
    Users users = await DataService.loadUser();
    name = users.fullName;
    email = users.email;
    loading = false;
    notifyListeners();
  }

}