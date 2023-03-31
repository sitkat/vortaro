import 'package:flutter/material.dart';
import 'package:vortaro/model/word.dart';

class DetailWord extends StatelessWidget {
  // const DetailWord({Key? key}) : super(key: key);

  Word _word;
  DetailWord(this._word);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Word Details'),),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(_word.title.replaceAll('(', '').replaceAll(')', '')),
            SizedBox(height: 20,),
            Text(_word.translation, ),
            SizedBox(height: 20,),
            Text(_word.description.toString(),),
          ],
        ),
      ),
    );
  }
}
