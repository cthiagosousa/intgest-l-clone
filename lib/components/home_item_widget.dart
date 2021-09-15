import 'package:flutter/material.dart';

class HomeItemWidget extends StatelessWidget {
  final String title;
  final String description;
  final String iconPath;
  final void Function() onTap;

  HomeItemWidget({
    required this.title,
    required this.description,
    required this.iconPath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Card(
      elevation: 5,
      child: ListTile(
        leading: Image.asset(
          this.iconPath,
          width: 40,
        ),
        title: Text(
          this.title,
          style: theme.textTheme.headline6,
        ),
        subtitle: Text(
          this.description,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: theme.textTheme.bodyText1,
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.arrow_drop_down,
            color: theme.primaryIconTheme.color,
            size: theme.primaryIconTheme.size,
          ),
          splashRadius: theme.primaryIconTheme.size,
          onPressed: () {},
        ),
        onTap: this.onTap,
      ),
    );
  }
}
