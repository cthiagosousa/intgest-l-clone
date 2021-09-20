import 'package:flutter/material.dart';

class HomeItemWidget extends StatefulWidget {
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
  _HomeItemWidgetState createState() => _HomeItemWidgetState();
}

class _HomeItemWidgetState extends State<HomeItemWidget> {
  bool isExpanded = false;

  void openCard() => setState(() => {isExpanded = !isExpanded});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: isExpanded ? 200 : 90,
      curve: Curves.fastOutSlowIn,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 3,
              offset: Offset(2, 2),
            )
          ],
        ),
        child: ListTile(
          leading: Image.asset(
            this.widget.iconPath,
            width: 40,
          ),
          title: Text(
            this.widget.title,
            style: theme.textTheme.headline6,
          ),
          subtitle: Text(
            this.widget.description,
            overflow: TextOverflow.ellipsis,
            maxLines: isExpanded ? 7 : 2,
            style: theme.textTheme.bodyText1,
          ),
          trailing: IconButton(
            icon: Icon(
              isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
              color: theme.primaryIconTheme.color,
              size: theme.primaryIconTheme.size,
            ),
            splashRadius: theme.primaryIconTheme.size,
            splashColor: theme.primaryColor,
            onPressed: openCard,
          ),
          onTap: this.widget.onTap,
        ),
      ),
    );
  }
}
