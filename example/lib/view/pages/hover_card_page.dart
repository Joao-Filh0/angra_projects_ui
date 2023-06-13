import 'package:angra_projects_ui/angra_projects_ui.dart';
import 'package:example/doc/documentation_page.dart';
import 'package:flutter/material.dart';

class HoverCardPage extends StatefulWidget {
  const HoverCardPage({super.key});

  @override
  State<HoverCardPage> createState() => _HoverCardPageState();
}

class _HoverCardPageState extends State<HoverCardPage> implements BoxScreen {
  final _component = const AngraHoverCard(
      hoverColor: Color(0xFFD3D1D1),
      backgroundColor: Color(0xFFE3E2E2),
      icon: AngraIconsEnum.alt_bell,
      title: "Example",
      iconColor: Colors.deepPurple,
      height: 300.0,
      width: 300.0);

  @override
  Map<String, dynamic> paramsToMap() {
    return {
      'hoverColor': _component.hoverColor,
      'backgroundColor': _component.backgroundColor,
      'icon': _component.icon,
      'title': _component.title,
      'iconColor': _component.iconColor,
      'height': _component.height,
      'width': _component.width
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
