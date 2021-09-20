import 'package:flutter/material.dart';

class DrawerItemWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function() onTap;

  const DrawerItemWidget({
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return ListTile(
      onTap: this.onTap,
      leading: Icon(
        this.icon,
        color: theme.primaryIconTheme.color,
        size: theme.primaryIconTheme.size,
      ),
      title: Text(
        this.text,
        style: theme.textTheme.headline6,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_outlined,
        color: theme.primaryIconTheme.color,
        size: 20,
      ),
    );
  }
}
