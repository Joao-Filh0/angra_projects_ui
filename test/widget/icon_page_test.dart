import 'package:angra_projects_ui/angra_projects_ui.dart';
import 'package:angra_projects_ui/widgets/angra_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../run_test_widget.dart';

void main() {
  testWidgets('[Widget] - AngraIcon', (tester) async {
    await tester.pumpWidget(runWidgetTest(const Center(
      child: AngraIcon(icon: AngraIconsEnum.alt_battery),
    )));

    expect(find.byType(AngraIcon), findsOneWidget);
  });
}
