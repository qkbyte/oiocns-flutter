import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  var phoneController = TextEditingController();
  var nicknameController = TextEditingController();
  var usernameController = TextEditingController();
  var mottoController = TextEditingController();
  var accountController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmController = TextEditingController();
  int step = 1;
  String privateKey = "";
  void changeStep(int value) {
    step = value;
    update();
  }
}
