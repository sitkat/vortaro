import 'package:flutter/material.dart';
import 'package:vortaro/app/ui/components/app_router/app_router.dart';
import 'package:vortaro/app/ui/components/app_router/app_router_constants.dart';
import 'package:vortaro/app/utils/app_utils.dart';
import 'package:vortaro/local/word.dart';

class DetailWord extends StatelessWidget {
  const DetailWord({super.key, required this.word});

  final Word word;

  @override
  Widget build(BuildContext context) {
    AppUtils utils = AppUtils();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(utils.stressWord(word.title)),
            const SizedBox(height: 20),
            Text(
              utils.stressWord(word.translation),
            ),
            const SizedBox(height: 20),
            if (word.description != "null")
              Text(utils.stressWord(word.description)),
            TextButton(
              child: const Text('Изменить'),
              onPressed: () {
                Navigator.pushNamed(context, updateWordRoute,
                    arguments: WordRouteArguments(wordArguments: word));
              },
            ),
          ],
        ),
      ),
    );
  }
}
