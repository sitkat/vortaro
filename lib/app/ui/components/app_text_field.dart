import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {Key? key,
      required this.controller,
      required this.labelText,
      this.obscureText = false})
      : super(key: key);

  final TextEditingController controller;
  final String labelText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      validator: validator,
      maxLines: 1,
      controller: controller,
      decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          )),
    );
  }

  String? validator(String? value) {
    if (value?.isEmpty == true) {
      return "Обязательное поле";
    }
    if (labelText == "Логин") {
      final regexLogin =
          RegExp(r'^(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$');
      if (!regexLogin.hasMatch(value!)) {
        return "Поле может содержать только латиницу и цифры";
      }
      final sizeLogin = RegExp(r'^.{5,20}$');
      if (!sizeLogin.hasMatch(value)) {
        return "Длина должна быть от 5 до 20 символов";
      }
    }

    if (labelText == "Почта") {
      final regexEmail = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
      if (!regexEmail.hasMatch(value!)) {
        return "Неправильная почта";
      }
    }

    if (labelText == "Пароль" || labelText == "Повторите пароль" || labelText == "Новый пароль" || labelText == "Текущий пароль" || labelText == "Повторите новый пароль") {
      final regexPassword = RegExp(r'^[A-Za-z0-9_.-]+$');
      if (!regexPassword.hasMatch(value!)) {
        return "Пароль может содержать только латинские буквы";
      }
      final sizePassword = RegExp(r'^.{5,20}$');
      if (!sizePassword.hasMatch(value)) {
        return "Длина должна быть от 5 до 20 символов";
      }
    }
    return null;
  }
}
