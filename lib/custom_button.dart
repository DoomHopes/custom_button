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
      width: 260,
      height: 85,
      color: Colors.black,
      child: InkWell(
        onTap: () {
          // todo
        },
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
              left: 5,
              child: Container(
                height: 85,
                width: 85,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  border: Border.all(color: Colors.red),
                ),
              ),
            ),
            Positioned(
              top: 9,
              left: 15,
              child: Container(
                height: 66,
                width: 66,
                child: icon,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.green),
                  color: Colors.green[900],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
