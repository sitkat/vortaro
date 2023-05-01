import 'package:flutter/material.dart';

class AppButtonMax extends StatelessWidget {
  const AppButtonMax({
    Key? key,
    required this.onPressed,
    required this.text,
    this.backgroundColor = Colors.blue,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
            // backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF4E9752)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide.none,
            )),
            fixedSize: MaterialStateProperty.all<Size>(
                const Size(double.maxFinite, 30))),
        // const Size(double.maxFinite, 40))),
        child: Text(text));
  }
}
