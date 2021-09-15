import 'package:flutter/material.dart';

class AppBarBottomWidget extends StatelessWidget {
  final double size;

  AppBarBottomWidget({required this.size});

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
              colorFilter:
                  ColorFilter.mode(theme.primaryColor, BlendMode.modulate),
              image: NetworkImage(
                  "http://revistacentral.com.br/wp-content/uploads/2020/07/Piquet-Carneiro-768x402.jpg"))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage("assets/images/logo2.png"),
          ),
          SizedBox(width: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Câmara Municipal",
                style: theme.textTheme.headline2,
              ),
              Text(
                "Piquet Carneiro",
                style: theme.textTheme.headline1!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
