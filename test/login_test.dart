import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vortaro/feature/auth/ui/login_screen.dart';

void main() {
  group('LoginScreen', () {
    testWidgets('Validating form and navigating to root route on login button tap', (WidgetTester tester) async {
      // Build the LoginScreen widget
      await tester.pumpWidget(
        MaterialApp(
          home: LoginScreen(),
        ),
      );

      // Enter valid login and password
      await tester.enterText(find.byKey(ValueKey('1')), 'testLogin');
      await tester.enterText(find.byKey(ValueKey('1')), 'testPassword');

      // Tap the login button
      await tester.tap(find.byKey(ValueKey('loginButton')));
      await tester.pumpAndSettle();

      // Verify that the form is validated and the root route is navigated to
      expect(find.text('Войти'), findsNothing);
      expect(find.text('С возвращением!'), findsOneWidget);
      expect(find.text('Зарегистрироваться'), findsOneWidget);
    });
  });
}
