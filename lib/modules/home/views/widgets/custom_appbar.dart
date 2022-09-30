import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final void Function()? onPressed;
  const CustomAppBar({this.title, this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: const EdgeInsets.only(top: 30.0, bottom: 10.0),
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      color: Colors.transparent,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title ?? '',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: onPressed,
                icon: CircleAvatar(
                  backgroundColor: Colors.grey.shade300,
                  foregroundColor: Colors.grey.shade800,
                  child: const Icon(Icons.close),
                ),
              ))
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size(100.0, 100.0);
}
