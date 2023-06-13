import 'package:angra_projects_ui/angra_projects_ui.dart';
import 'package:angra_projects_ui/commons/helpers/validator_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../run_test_widget.dart';

void main() {
  const message = "Email inválido";
  late GlobalKey<FormState> formKey;

  setUp(() {
    formKey = GlobalKey<FormState>();
  });
  group('[WIDGET] - AngraTextInput', () {
    testWidgets('When there is an error in the validator', (tester) async {
      await tester.pumpWidget(runWidgetTest(Form(
        key: formKey,
        child: Center(
          child: AngraTextInput(
            validator: AngraValidatorFieldHelpers.email(message),
          ),
        ),
      )));

      final textInput = find.byType(AngraTextInput);

      await tester.enterText(textInput, "example.com");
      formKey.currentState!.validate();
      await tester.pump();

      expect(find.text(message), findsOneWidget);
    });

    testWidgets('When added the correct data', (tester) async {
      await tester.pumpWidget(runWidgetTest(Form(
        key: formKey,
        child: Center(
          child: AngraTextInput(
            validator: AngraValidatorFieldHelpers.email(message),
          ),
        ),
      )));

      final textInput = find.byType(AngraTextInput);

      await tester.enterText(textInput, "example@gmail.com");
      formKey.currentState!.validate();
      await tester.pump();

      expect(find.text(message), findsNothing);
    });
  });
}
