import 'package:flutter/material.dart';

class CardDivider extends StatelessWidget {
  const CardDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Divider(thickness: 1.0),
    );
  }
}
