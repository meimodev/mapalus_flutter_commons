import 'package:flutter/material.dart';
import '../shared/shared.dart';


class ScreenWrapper extends StatelessWidget {
  const ScreenWrapper({super.key, required this.child, this.backgroundColor});

  final Widget child;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor ?? PaletteTheme.scaffold,
        body: child,
      ),
    );
  }
}