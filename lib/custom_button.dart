import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Icon icon;
  final Color color;
  final Function() onTap;

  const CustomButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  Color darken(Color c, [int percent = 30]) {
    assert(1 <= percent && percent <= 100);
    var f = 1 - percent / 100;
    return Color.fromARGB(c.alpha, (c.red * f).round(), (c.green * f).round(),
        (c.blue * f).round());
  }

  Color brighten(Color c, [int percent = 20]) {
    assert(1 <= percent && percent <= 100);
    var p = percent / 100;
    return Color.fromARGB(
        c.alpha,
        c.red + ((255 - c.red) * p).round(),
        c.green + ((255 - c.green) * p).round(),
        c.blue + ((255 - c.blue) * p).round());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 260,
        height: 85,
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
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      brighten(color),
                      darken(color),
                    ],
                  ),
                  borderRadius:
                      const BorderRadius.only(topRight: Radius.circular(90)),
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
                  border: Border.all(color: brighten(color)),
                  color: darken(color),
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
                  border: Border.all(color: Colors.grey),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    tileMode: TileMode.mirror,
                    colors: [
                      Colors.white,
                      Colors.transparent,
                      Colors.white,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
