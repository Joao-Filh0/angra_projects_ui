import 'package:angra_projects_ui/angra_projects_ui.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('[COMMONS/EXTENSIONS]  Capitalize', () {
    const text = 'example';

    expect(text.capitalize(), 'Example');
  });
}
