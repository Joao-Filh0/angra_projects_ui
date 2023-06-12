import 'package:example/doc/documentation_expansive_title.dart';
import 'package:flutter/material.dart';

abstract class BoxScreen {
  Map<String, dynamic> paramsToMap();
}

class DocumentationPage extends StatefulWidget {
  final String title;
  final Widget component;
  final Function paramsToMap;
  final Map<String, dynamic>? example;
  final bool branded;

  const DocumentationPage(
      {required this.title,
      required this.component,
      required this.paramsToMap,
      this.example,
      Key? key,
      this.branded = false})
      : super(key: key);

  @override
  State<DocumentationPage> createState() => _DocumentationPageState();
}

class _DocumentationPageState extends State<DocumentationPage> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: DocumentationExpansiveTile(
                  component: widget.component, stringCode: toStringCode()),
            ),
          ],
        ),
      ),
    );
  }

  String toStringCode() {
    var code = '${widget.component.runtimeType.toString()}(';
    Map<String, dynamic> map = widget.example ?? widget.paramsToMap();
    map.forEach((key, value) {
      if (value == 'Required') {
        code += '\n    $key: \'$value\', //TODO: put here your $key';
      } else if (value is String) {
        if (widget.example != null) {
          code += value.isNotEmpty ? '\n    $key: $value,' : '';
        } else {
          code += value.isNotEmpty ? '\n    $key: \'$value\',' : '';
        }
      } else if (value is bool) {
        code += value ? '\n    $key: $value,' : '';
      } else if (value is MaterialColor) {
        code += '\n  $key : Color(${value.value})';
      } else if (value is TextEditingController) {
        code += '\n  $key : ${value.runtimeType}';
      } else {
        code +=
            value != null ? '\n    $key: ${value.runtimeType.toString()},' : '';
      }
    });

    return code += '\n)';
  }


}
