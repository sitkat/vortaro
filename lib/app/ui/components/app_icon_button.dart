import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.size = 25.0,
  }) : super(key: key);

  final VoidCallback onPressed;
  final Icon icon;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      iconSize: size,
    );
  }
}
