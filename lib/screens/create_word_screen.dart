import 'package:flutter/material.dart';
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
        title: Text('New word'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(hintText: 'Enter Word title'),
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
                decoration: InputDecoration(hintText: 'Enter Word translation'),
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
                decoration: InputDecoration(hintText: 'Enter Word description'),
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
                  child: Text('Save'),
                  onPressed: () async {
                    await helper.onCreateWord(Word(
                        edition: DateTime.now()
                            .add(const Duration(hours: 3))
                            .toString(),
                        title: title,
                        translation: translation,
                        description: description));
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => HomeScreen()));
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
