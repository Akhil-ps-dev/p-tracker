//@dart=2.9
import 'package:flutter/material.dart';

class IconWidgets extends StatelessWidget {
  final IconData icon;
  final Color color;

  const IconWidgets({Key key, this.icon, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
    
        padding: EdgeInsets.all(7),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      );
}
