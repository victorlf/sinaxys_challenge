import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sinaxys_challenge/modules/home/views/widgets/custom_card.dart';
import 'package:sinaxys_challenge/modules/home/views/widgets/card_divider.dart';
import 'package:sinaxys_challenge/modules/home/views/widgets/card_icon_button.dart';
import 'package:sinaxys_challenge/modules/home/views/widgets/card_row.dart';
import 'package:sinaxys_challenge/modules/home/views/widgets/card_row_total_value.dart';
import 'package:sinaxys_challenge/modules/home/views/widgets/custom_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Olá, Rafaela Pasini'),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        children: [
          Text(
            'Comprovante de Crédito efetuado',
            style: Theme.of(context).textTheme.headline1,
          ),
          CustomCard(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CardRow(
                    leftText: 'Creditado por', rightText: 'AmorSaúde Alvorada'),
                SizedBox(height: 20.0),
                CardRow(leftText: 'Data', rightText: '05/05/22'),
                SizedBox(height: 40.0),
                CardRowTotalValue('450,00'),
                CardDivider(),
                CardRow(
                    leftText: 'Previsão de recebimento', rightText: '20/05/22'),
                SizedBox(height: 10.0),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text('em 15 dias', style: TextStyle(fontSize: 12.0)),
                ),
                CardDivider(),
                CardIconButton(
                  icon: Icons.article_outlined,
                  title: 'Ver detalhes dos serviços',
                ),
                CardDivider(),
                CardIconButton(
                  icon: Icons.download_outlined,
                  title: 'Salvar comprovante',
                ),
              ],
            ),
          ),
          const SizedBox(height: 30.0),
          ElevatedButton(
            onPressed: () => Modular.to.pushNamed('./second_page'),
            child: const Text('Ver meu Saldo completo'),
          )
        ],
      ),
    );
  }
}
