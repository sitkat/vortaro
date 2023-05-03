import 'package:flutter/material.dart';
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

  TextEditingController _controllerTitle = TextEditingController();
  TextEditingController _controllerTranslation = TextEditingController();
  TextEditingController _controllerDescription = TextEditingController();

  @override
  void initState() {
    helper = DbHelper.instance;

    _controllerTitle.text = widget.word.title;
    _controllerTranslation.text = widget.word.translation;
    _controllerDescription.text = widget.word.description;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Изменение'),
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
                child: Text('Сохранить'),
                onPressed: () async {
                  await helper.onUpdateWord(Word(
                      id: widget.word.id,
                      edition: DateTime.now()
                          .add(const Duration(hours: 3))
                          .toString(),
                      title: _controllerTitle.text,
                      translation: _controllerTranslation.text,
                      description: _controllerDescription.text));
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => HomeScreen()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
