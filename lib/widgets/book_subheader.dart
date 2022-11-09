import 'package:flutter/material.dart';

class BookSubHeader extends StatelessWidget {
  const BookSubHeader({
    Key? key,
    required this.iconData,
    required this.title, this.color = Colors.white60,
  }) : super(key: key);
  final IconData iconData;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          color: color,
          size: 18.0,
        ),
        // ignore: prefer_const_constructors
        SizedBox(
          width: 12.0,
        ),
        Text(
          title,
          style:  TextStyle(
            color: color,
            fontSize: 12.0,
          ),
        )
      ],
    );
  }
}
