import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ParliamentaryContactCardWidget extends StatelessWidget {
  final String phoneNumber;

  ParliamentaryContactCardWidget({required this.phoneNumber});

  void _call() async {
    final url = "tel:$phoneNumber";

    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        gradient: LinearGradient(
          colors: [
            theme.primaryColor,
            theme.accentColor,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 3,
            offset: Offset(5, 3),
          )
        ],
      ),
      child: Column(
        children: [
          Text(
            "Legislatura: 2021-2024",
            style: theme.textTheme.headline2!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.call),
            label: Text(this.phoneNumber),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(theme.accentColor),
            ),
            onPressed: _call,
          )
        ],
      ),
    );
  }
}
