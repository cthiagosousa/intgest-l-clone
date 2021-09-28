import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final TextInputType keyboardType;
  final bool? obscureText;
  final TextEditingController controller;

  const InputWidget({
    required this.hintText,
    required this.prefixIcon,
    required this.keyboardType,
    required this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: theme.accentColor,
          width: 1.5,
        ),
      ),
      child: TextFormField(
        keyboardType: keyboardType,
        cursorColor: theme.primaryColor,
        style: theme.textTheme.headline6,
        obscureText: obscureText!,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: theme.textTheme.bodyText1,
          prefixIcon: Icon(
            prefixIcon,
            color: theme.primaryIconTheme.color,
            size: theme.primaryIconTheme.size,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
