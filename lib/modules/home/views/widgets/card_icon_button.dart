import 'package:flutter/material.dart';

class CardIconButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final void Function()? onTap;
  const CardIconButton(
      {Key? key, required this.icon, required this.title, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(
            icon,
            color: Theme.of(context).colorScheme.secondary,
          ),
          const SizedBox(width: 10.0),
          Text(
            title,
            style: Theme.of(context).textTheme.headline3,
          ),
        ],
      ),
    );
  }
}
