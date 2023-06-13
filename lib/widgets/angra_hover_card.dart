import 'package:angra_projects_ui/angra_projects_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AngraHoverCard extends StatefulWidget {
  final String title;
  final Color? iconColor;
  final Color hoverColor;
  final Color backgroundColor;
  final double height;
  final double width;
  final AngraIconsEnum icon;

  const AngraHoverCard({
    super.key,
    required this.hoverColor,
    required this.backgroundColor,
    required this.icon,
    required this.title,
    this.iconColor,
    this.height = 100,
    this.width = 100,
  });

  @override
  State<AngraHoverCard> createState() => _AngraHoverCardState();
}

class _AngraHoverCardState extends State<AngraHoverCard> {
  late ValueNotifier controller;

  @override
  void initState() {
    super.initState();
    controller = ValueNotifier(widget.backgroundColor);
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: controller,
        builder: (context, color, _) {
          return MouseRegion(
            onEnter: _onEnter,
            onExit: _onExit,
            child: SizedBox(
              width: widget.width,
              height: widget.height,
              child: Card(
                color: color,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AngraIcon(
                      icon: widget.icon,
                      color: widget.iconColor,
                      size: 150,
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Text(
                      widget.title,
                      style: TextStyle(color: widget.iconColor, fontSize: 20.0),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  void _onEnter(PointerEnterEvent event) =>
      controller.value = widget.hoverColor;

  _onExit(PointerExitEvent event) => controller.value = widget.backgroundColor;
}
