import 'package:flutter/material.dart';

class CardRow extends StatelessWidget {
  final String leftText;
  final String rightText;
  const CardRow({Key? key, required this.leftText, required this.rightText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftText,
          style: Theme.of(context).textTheme.headline4,
        ),
        Text(
          rightText,
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
