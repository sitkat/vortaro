import 'package:flutter/material.dart';
import 'package:vortaro/app/ui/components/app_router/app_router_constants.dart';
import 'package:vortaro/local/data_base/data_base_helper.dart';
import 'package:vortaro/local/word.dart';

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
              const SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(hintText: 'Введите перевод'),
                onChanged: (value) {
                  setState(() {
                    _translation = value;
                  });
                },
              ),
              const SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(hintText: 'Введите описание'),
                onChanged: (value) {
                  setState(() {
                    _description = value;
                  });
                },
              ),
              const SizedBox(height: 15),
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
                    Navigator.pushNamed(context, rootRoute);
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
