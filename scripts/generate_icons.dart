import 'dart:io';
import 'package:path/path.dart' as path;

void main() {
  final iconsDir = Directory('./assets/icons/');
  final icons = iconsDir.listSync();
  final enumValues = <String>[];

  print("########## Start ${icons} ##########");

  for (var icon in icons) {
    if (icon is File && path.extension(icon.path) == '.svg') {
      print('${icon.path.split("/")[2]} ------>  OK');
      enumValues.add(path.basenameWithoutExtension(icon.path));
    }
  }

  final enumContent = 'enum AppIconsEnum { ${enumValues.join(', ')} }\n';

  final outputFile = File('lib/commons/enums/angra_icons.dart');
  outputFile.writeAsStringSync(enumContent);
  print("########## Finish ##########");
}
