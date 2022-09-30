import 'package:flutter/material.dart';

class CardRowTotalValue extends StatelessWidget {
  final String totalValue;
  const CardRowTotalValue(this.totalValue, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Valor total',
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        RichText(
          text: TextSpan(
              text: 'R\$  ',
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              children: [
                TextSpan(
                  text: totalValue,
                  style: Theme.of(context).textTheme.headline2,
                )
              ]),
        ),
      ],
    );
  }
}
