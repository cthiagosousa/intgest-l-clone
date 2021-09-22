import 'package:flutter/material.dart';

class ParliamentaryGridItemWidget extends StatelessWidget {
  final String title;
  final String iconPath;
  final void Function()? onTap;

  const ParliamentaryGridItemWidget({
    required this.title,
    required this.iconPath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Container(
      child: InkWell(
        onTap: this.onTap,
        child: Card(
          color: theme.cardTheme.color,
          elevation: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    color: theme.accentColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    )),
                child: Center(
                  child: Text(
                    this.title,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyText1!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      this.iconPath,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
