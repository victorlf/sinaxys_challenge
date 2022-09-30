import 'package:flutter/material.dart';

class NumbersDots extends StatelessWidget {
  final int? numberOfDots;
  const NumbersDots({Key? key, this.numberOfDots}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < (numberOfDots ?? 3); i++)
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: CircleAvatar(
              radius: 1.5,
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
          ),
      ],
    );
  }
}
