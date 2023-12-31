import 'package:angra_projects_ui/angra_projects_ui.dart';
import 'package:example/doc/documentation_page.dart';
import 'package:flutter/material.dart';

class IconPage extends StatefulWidget {
  const IconPage({super.key});

  @override
  State<IconPage> createState() => _IconPageState();
}

class _IconPageState extends State<IconPage> implements BoxScreen {

  final _component = const AngraIcon(
    color: Colors.red,
    size: 100,
    icon: AngraIconsEnum.alt_battery,
  );

  @override
  Map<String, dynamic> paramsToMap() {
    return {
      'color': _component.color,
      'size': _component.size,
      'icon': _component.icon
    };
  }

  @override
  Widget build(BuildContext context) {
    return DocumentationPage(
      component: _component,
      paramsToMap: paramsToMap,
    );
  }
}
