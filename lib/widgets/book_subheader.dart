import 'package:flutter/material.dart';

class BookSubHeader extends StatelessWidget {
  const BookSubHeader({
    Key? key,
    required this.iconData,
    required this.title,
  }) : super(key: key);
  final IconData iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          color: Colors.white60,
          size: 18.0,
        ),
        SizedBox(
          width: 12.0,
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white60,
            fontSize: 12.0,
          ),
        )
      ],
    );
  }
}
