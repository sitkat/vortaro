import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vortaro/feature/auth/ui/register_screen.dart';

void main() {
  group('RegisterScreen', () {
    testWidgets('Validating form and navigating to root route on registration button tap', (WidgetTester tester) async {
      // Build the RegisterScreen widget
      await tester.pumpWidget(
        MaterialApp(
          home: RegisterScreen(),
        ),
      );

      // Enter valid registration data
      await tester.enterText(find.byKey(ValueKey('loginTextField')), 'testLogin');
      await tester.enterText(find.byKey(ValueKey('emailTextField')), 'test@example.com');
      await tester.enterText(find.byKey(ValueKey('passwordTextField')), 'testPassword');
      await tester.enterText(find.byKey(ValueKey('repeatPasswordTextField')), 'testPassword');

      // Tap the registration button
      await tester.tap(find.byKey(ValueKey('registerButton')));
      await tester.pumpAndSettle();

      // Verify that the form is validated, passwords match, and the root route is navigated to
      expect(find.text('Регистрация'), findsNothing);
      expect(find.text('Создайте аккаунт!'), findsOneWidget);
      expect(find.text('Авторизоваться'), findsOneWidget);
    });
  });
}
