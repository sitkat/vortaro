import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vortaro/app/utils/app_utils.dart';
import 'package:vortaro/local/screens/detail_word_screen.dart';
import 'package:vortaro/local/word.dart';

void main() {
  testWidgets('DetailWord Widget Test', (WidgetTester tester) async {
    // Создаем экземпляр класса Word для использования в тесте
    final word = Word(
      title: 'Word Title',
      translation: 'Word Translation',
      description: 'Word Description',
      edition: '2020-12-12',
    );

    // Строим виджет
    await tester.pumpWidget(
      MaterialApp(
        home: DetailWord(word: word),
      ),
    );

    // Проверяем наличие текстовых виджетов с ожидаемыми значениями
    expect(find.text('Word Title'), findsOneWidget);
    expect(find.text('Word Translation'), findsOneWidget);
    expect(find.text('Word Description'), findsOneWidget);
    expect(find.text('Word Edition'), findsOneWidget);

    // Проверяем стили текстовых виджетов
    final textStyle1 = tester.widget<Text>(
      find.descendant(
        of: find.text('Word Title'),
        matching: find.byType(Text),
      ),
    ).style;
    expect(textStyle1?.fontFamily, 'Jura');
    expect(textStyle1?.color, Colors.black87);
    expect(textStyle1?.fontSize, 32);
    expect(textStyle1?.fontWeight, FontWeight.w700);

    final textStyle2 = tester.widget<Text>(
      find.descendant(
        of: find.text('Word Translation'),
        matching: find.byType(Text),
      ),
    ).style;
    expect(textStyle2?.fontFamily, 'Jura');
    expect(textStyle2?.color, Colors.green);
    expect(textStyle2?.fontSize, 26);
    expect(textStyle2?.fontWeight, FontWeight.normal);

    final textStyle3 = tester.widget<Text>(
      find.descendant(
        of: find.text('Word Description'),
        matching: find.byType(Text),
      ),
    ).style;
    expect(textStyle3?.fontFamily, 'Muli');
    expect(textStyle3?.color, Colors.black87);
    expect(textStyle3?.fontSize, 18);
    expect(textStyle3?.fontWeight, FontWeight.w700);

    // Проверяем наличие контейнера
    expect(find.byType(Container), findsOneWidget);

    // Проверяем свойства контейнера
    final container = tester.widget<Container>(find.byType(Container));
    expect(container.decoration, BoxDecoration(
      color: Colors.lightGreen.shade100,
      borderRadius: BorderRadius.circular(20),
    ));
    // expect(container.height, equals(160));
    // expect(container.width, 180);
  });
}