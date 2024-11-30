// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lift_fleet_service/main.dart';
void main() {
  testWidgets('Verifica que el texto "Hello World" esté presente', (WidgetTester tester) async {
    // Construimos la aplicación y esperamos a que se renderice el frame.
    await tester.pumpWidget(MyApp());

    // Verificamos que el texto 'Hello World' esté presente en la pantalla.
    expect(find.text('Hello World'), findsOneWidget);
  });
}