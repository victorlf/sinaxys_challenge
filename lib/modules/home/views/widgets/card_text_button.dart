import 'package:flutter/material.dart';

class CardTextButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const CardTextButton({Key? key, required this.title, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headline3!
            .copyWith(color: Theme.of(context).colorScheme.secondary),
      ),
    );
  }
}
