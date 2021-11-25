import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Icon icon;

  const CustomButton({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 200,
      decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.only(topRight: Radius.circular(90)),
      ),
    );
  }
}
