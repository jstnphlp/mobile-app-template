import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_app_template/app/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  testWidgets('shows starter screen without backend credentials', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: StarterApp()));
    await tester.pumpAndSettle();
    expect(find.text('Ready to build'), findsOneWidget);
    expect(find.byType(Scaffold), findsOneWidget);
  });
}
