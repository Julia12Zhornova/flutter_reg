import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key,
      required this.title,
      this.name,
      this.lastname,
      this.aboutText,
      this.gender,
      this.policy,
      this.isSwiched,
      this.lang});

  final String title;

  final String? name;
  final String? lastname;
  final String? aboutText;
  final int? gender;
  final bool? policy;
  final bool? isSwiched;
  final String? lang;

  String getText() {
    String text;
    text = "Фамилия: $name \n" +
        "Имя: $lastname \n" +
        "Пол: ${gender == 0 ? "Женский" : "Мужской"} \n" +
        "Страна: $lang \n" +
        "Переключатель: ${isSwiched == true ? "Вакансии из других стран" : "Вакансии выбранной страны"} \n" +
        "О себе: $aboutText \n" +
        "Согласились на обработку персональных данных: ${policy == true ? "Да" : "Нет"}";
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Container(
            width: 300,

            child: Text(getText()),
          ),
        ));
  }
}
