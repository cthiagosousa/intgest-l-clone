import 'package:flutter/material.dart';

class AppBarBottomWidget extends StatelessWidget {
  final String title;
  final String subtitle1;
  final String? subtitle2;
  final String imagePath;
  final String backgroundImagePath;
  final double size;

  AppBarBottomWidget({
    required this.title,
    required this.subtitle1,
    required this.imagePath,
    required this.backgroundImagePath,
    required this.size,
    this.subtitle2,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Container(
      width: double.infinity,
      height: this.size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(60),
        ),
        color: theme.primaryColor,
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(theme.primaryColor, BlendMode.modulate),
          image: NetworkImage(this.backgroundImagePath),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(this.imagePath),
          ),
          SizedBox(width: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                this.subtitle1,
                style: theme.textTheme.headline2,
              ),
              Text(
                this.title,
                style: theme.textTheme.headline1!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (this.subtitle2 != null)
                Text(
                  this.subtitle2!,
                  style: theme.textTheme.headline3,
                )
            ],
          )
        ],
      ),
    );
  }
}
