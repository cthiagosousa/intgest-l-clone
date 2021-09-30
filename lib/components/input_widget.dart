import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final TextInputType keyboardType;
  final bool? obscureText;
  final TextEditingController controller;
  final int? maxLength;
  final String? Function(String? value)? validator;

  const InputWidget({
    required this.hintText,
    required this.prefixIcon,
    required this.keyboardType,
    required this.controller,
    this.obscureText = false,
    this.validator,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        keyboardType: keyboardType,
        cursorColor: theme.primaryColor,
        style: theme.textTheme.headline6,
        obscureText: obscureText!,
        controller: controller,
        validator: validator,
        maxLength: maxLength,
        decoration: InputDecoration(
          hintText: hintText,
          counterStyle: theme.textTheme.headline6,
          hintStyle: theme.textTheme.bodyText1,
          prefixIcon: Icon(
            prefixIcon,
            color: theme.primaryIconTheme.color,
            size: theme.primaryIconTheme.size,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: theme.accentColor,
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: theme.accentColor,
              width: 1,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Colors.red,
              width: 1,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Colors.red,
              width: 1,
            ),
          ), //border: InputBorder.none,
        ),
      ),
    );
  }
}
