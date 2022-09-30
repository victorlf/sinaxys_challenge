import 'package:flutter/material.dart';

import 'credit_card_symbol.dart';
import 'numbers_dots.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 180.0,
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.topLeft,
          colors: [
            Color(0xFF2E167E),
            Color(0xFF562DF8),
          ],
        ),
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(width: 0.1),
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Align(
          alignment: Alignment.topRight,
          child: RichText(
            text: TextSpan(
                text: 'Sinaxys',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                children: [
                  TextSpan(
                    text: 'PAY',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context)
                            .colorScheme
                            .onSecondary
                            .withOpacity(0.5)),
                  )
                ]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                const NumbersDots(),
                Text(
                  '5698',
                  style: TextStyle(
                      fontSize: 12.0,
                      letterSpacing: 5.0,
                      color: Theme.of(context).colorScheme.onSecondary),
                ),
              ],
            ),
            const CreditCardSymbol()
          ],
        ),
      ]),
    );
  }
}
