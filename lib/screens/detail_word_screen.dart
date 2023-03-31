import 'package:flutter/material.dart';
import 'package:vortaro/model/word.dart';

class DetailWord extends StatelessWidget {
  const DetailWord({super.key, required this.word});

  final Word word;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Word Details'),),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(word.title.replaceAll('(', '').replaceAll(')', '')),
            SizedBox(height: 20,),
            Text(word.translation, ),
            SizedBox(height: 20,),
            Text(word.description.toString(),),
          ],
        ),
      ),
    );
  }
}
