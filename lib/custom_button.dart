import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 200,
      child: const Center(
        child: Text(
          'Some text',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.only(topRight: Radius.circular(90)),
      ),
    );
  }
}
