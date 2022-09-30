import 'package:flutter/material.dart';

class CreditCardSymbol extends StatelessWidget {
  const CreditCardSymbol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65.0,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.yellow.shade800,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.red.shade800,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.yellow.shade800.withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }
}
