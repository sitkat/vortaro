import 'package:flutter/material.dart';
import 'package:vortaro/UI/app_router/constants_router.dart';
import 'package:vortaro/Utils/utils.dart';
import 'package:vortaro/data_base/data_base_helper.dart';
import 'package:vortaro/model/word.dart';
import 'package:vortaro/screens/home_screen.dart';

class CreateWord extends StatefulWidget {
  const CreateWord({Key? key}) : super(key: key);

  @override
  State<CreateWord> createState() {
    return _CreateWordState();
  }
}

class _CreateWordState extends State<CreateWord> {
  String title = "";
  String description = "";
  String translation = "";

  var helper;

  @override
  void initState() {
    super.initState();
    helper = DbHelper.instance;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Новое слово'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(hintText: 'Введи слово'),
                onChanged: (value) {
                  setState(() {
                    title = value;
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'Введите перевод'),
                onChanged: (value) {
                  setState(() {
                    translation = value;
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'Введите описание'),
                onChanged: (value) {
                  setState(() {
                    description = value;
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 350,
                height: 40,
                child: TextButton(
                  child: Text('Сохранить'),
                  onPressed: () async {
                    await helper.onCreateWord(Word(
                        edition: DateTime.now()
                            .add(const Duration(hours: 3))
                            .toString(),
                        title: title,
                        translation: translation,
                        description: description));
                    Navigator.pushNamed(context, homeRoute);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
