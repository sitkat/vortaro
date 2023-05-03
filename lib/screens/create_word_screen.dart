import 'package:flutter/material.dart';
import 'package:vortaro/UI/app_router/constants_router.dart';
import 'package:vortaro/Utils/utils.dart';
import 'package:vortaro/data_base/data_base_helper.dart';
import 'package:vortaro/model/word.dart';

class CreateWord extends StatefulWidget {
  const CreateWord({Key? key}) : super(key: key);

  @override
  State<CreateWord> createState() {
    return _CreateWordState();
  }
}

class _CreateWordState extends State<CreateWord> {
  String _title = "";
  String _description = "";
  String _translation = "";

  var _helper;

  @override
  void initState() {
    super.initState();
    _helper = DbHelper.instance;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Новое слово'),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(hintText: 'Введи слово'),
                onChanged: (value) {
                  setState(() {
                    _title = value;
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
                    _translation = value;
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
                    _description = value;
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
                  child: Text('Добавить'),
                  onPressed: () async {
                    await _helper.onCreateWord(Word(
                        edition: DateTime.now()
                            .add(const Duration(hours: 3))
                            .toString(),
                        title: _title,
                        translation: _translation,
                        description: _description));
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
