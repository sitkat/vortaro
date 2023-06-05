import 'package:flutter/material.dart';
import 'package:vortaro/app/utils/app_utils.dart';
import 'package:vortaro/local/word.dart';

class DetailWord extends StatelessWidget {
  const DetailWord({super.key, required this.word});

  final Word word;

  @override
  Widget build(BuildContext context) {
    AppUtils utils = AppUtils();
    final theme = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: SafeArea(
          child: AppBar(
            title: Text("Esperanto", style: theme.textTheme.displayLarge),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            Text(
              utils.stressWord(word.title),
              style: const TextStyle(
                  fontFamily: "Jura",
                  color: Colors.black87,
                  fontSize: 32,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              utils.stressWord(word.translation),
              style: const TextStyle(
                  fontFamily: "Jura",
                  color: Colors.green, fontSize: 26, fontWeight: FontWeight.normal),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.all(15),
              height: 160,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.lightGreen.shade100,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("Описание",
                    style: TextStyle(
                        fontFamily: "Muli",
                        color: Colors.black87, fontSize: 18, fontWeight: FontWeight.w700),),
                  const SizedBox(height: 15),
                  Text("- ${utils.stressWord(word.description) ?? ""}",
                    style: const TextStyle(
                        fontFamily: "Muli",
                        color: Colors.black87, fontSize: 18, fontWeight: FontWeight.w200),
                  ),
                ],
              ),
            ),
            // if (word.description != "null")
            //   Text(utils.stressWord(word.description)),
          ],
        ),
      ),
    );
  }
}
