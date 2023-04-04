import 'package:flutter/material.dart';
import 'package:vortaro/UI/app_router/constants_router.dart';
import 'package:vortaro/UI/app_router/custom_router.dart';
import 'package:vortaro/Utils/utils.dart';
import 'package:vortaro/model/word.dart';

class DetailWord extends StatelessWidget {
  DetailWord({super.key, required this.word});

  final Word word;

  @override
  Widget build(BuildContext context) {
    Utils utils = Utils();
    return Scaffold(
      appBar: AppBar(
        title: Text('Word Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(utils.stressWord(word.title)),
            SizedBox(
              height: 20,
            ),
            Text(
              utils.stressWord(word.translation),
            ),
            SizedBox(
              height: 20,
            ),
            if (word.description != "null") Text(utils.stressWord(word.description)),
            Container(
              child: TextButton(
                child: Text('Edit'),
                onPressed: () {
                  Navigator.pushNamed(context, updateWordRoute,
                      arguments: WordRouteArguments(wordArguments: word));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
