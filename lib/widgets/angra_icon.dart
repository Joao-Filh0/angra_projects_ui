import 'package:angra_projects_ui/commons/enums/angra_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AngraIcon extends StatelessWidget {
  static const String _iconsAssetsPath =
      'packages/angra_projects_ui/assets/icons/';
  final AngraIconsEnum icon;
  final double size;
  final bool branded;
  final Color? color;

  const AngraIcon(
      {required this.icon,
      Key? key,
      this.size = 50,
      this.branded = false,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final Color onSurfaceColor = Theme
    //     .of(context)
    //     .colorScheme
    //     .onSurface;
    return SvgPicture.asset(
      '$_iconsAssetsPath${icon.name}.svg',
      colorFilter: ColorFilter.mode(color ?? Colors.black, BlendMode.srcIn),
      width: size,
      height: size,
    );
  }
}
