import 'package:flutter/material.dart';
import 'package:vortaro/app/ui/components/app_router/app_router_constants.dart';
import 'package:vortaro/local/data_base/data_base_helper.dart';
import 'package:vortaro/local/word.dart';

class UpdateWord extends StatefulWidget {
  const UpdateWord({super.key, required this.word});

  final Word word;

  @override
  State<UpdateWord> createState() => _UpdateWordState();
}

class _UpdateWordState extends State<UpdateWord> {
  var helper;

  final TextEditingController _controllerTitle = TextEditingController();
  final TextEditingController _controllerTranslation = TextEditingController();
  final TextEditingController _controllerDescription = TextEditingController();

  @override
  void initState() {
    super.initState();
    helper = DbHelper.instance;

    _controllerTitle.text = widget.word.title;
    _controllerTranslation.text = widget.word.translation;
    _controllerDescription.text = widget.word.description;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Изменение'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: <Widget>[
            TextField(
              controller: _controllerTitle,
            ),
            TextField(
              controller: _controllerTranslation,
            ),
            TextField(
              controller: _controllerDescription,
            ),
            Container(
              width: 350,
              height: 40,
              child: TextButton(
                child: const Text('Сохранить'),
                onPressed: () {
                  helper.onUpdateWord(Word(
                      id: widget.word.id,
                      edition: DateTime.now()
                          .add(const Duration(hours: 3))
                          .toString(),
                      title: _controllerTitle.text,
                      translation: _controllerTranslation.text,
                      description: _controllerDescription.text));
                  Navigator.pushNamed(context, wordListNotAuthRoute);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
