import 'package:flutter/material.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  PrimaryButtonWidget({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blue[400]),
        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      ),
      child: Text(
        text,
        style: theme.textTheme.headline3,
      ),
    );
  }
}
