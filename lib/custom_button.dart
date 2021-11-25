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
    return SizedBox(
      width: 280,
      height: 80,
      child: Container(
        color: Colors.black,
        child: Stack(
          children: <Widget>[
            Positioned(
              right: 1,
              top: 18,
              child: Container(
                height: 50,
                width: 200,
                child: Center(
                  child: Text(
                    text,
                    style: const TextStyle(fontSize: 25),
                  ),
                ),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.greenAccent,
                      Colors.green,
                    ],
                  ),
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(90)),
                ),
              ),
            ),
            Positioned(
              top: 17,
              left: 53,
              child: Container(
                height: 55,
                width: 55,
                child: icon,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green[900],
                ),
              ),
            ),
            Positioned(
              top: 9,
              left: 45,
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  border: Border.all(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
