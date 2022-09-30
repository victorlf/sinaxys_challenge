import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sinaxys_challenge/modules/home/views/widgets/card_text_button.dart';
import 'package:sinaxys_challenge/modules/home/views/widgets/custom_card.dart';

import '../widgets/card_divider.dart';
import '../widgets/card_row.dart';
import '../widgets/card_row_total_value.dart';
import '../widgets/credit_card/credit_card.dart';
import '../widgets/custom_appbar.dart';

const totalValue = '450,00';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(onPressed: () => Modular.to.pop()),
      body: ListView(
        children: [
          Container(
            color: Theme.of(context).colorScheme.primary,
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                const CreditCard(),
                const SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Saldo disponível',
                          style: Theme.of(context)
                              .textTheme
                              .headline2!
                              .copyWith(fontWeight: FontWeight.normal),
                        ),
                        const SizedBox(height: 8.0),
                        RichText(
                          text: TextSpan(
                              text: 'R\$  ',
                              style: Theme.of(context).textTheme.headline2,
                              children: [
                                TextSpan(
                                  text: totalValue,
                                  style: Theme.of(context).textTheme.headline1,
                                )
                              ]),
                        ),
                      ],
                    ),
                    Align(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Resgatar'),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 60.0)
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 10.0, left: 24.0),
            child: Text('PAGAMENTOS'),
          ),
          Container(
            color: Theme.of(context).colorScheme.primary,
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: CustomCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CardRow(
                      leftText: 'Pagamento efetuado', rightText: '20/05/22'),
                  SizedBox(height: 20.0),
                  CardRow(leftText: 'Local', rightText: 'AmorSaúde Alvorada'),
                  SizedBox(height: 20.0),
                  CardRowTotalValue(totalValue),
                  SizedBox(height: 10.0),
                  CardDivider(),
                  CardTextButton(title: 'ver detalhes'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
