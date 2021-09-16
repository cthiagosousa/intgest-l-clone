import 'package:flutter/material.dart';

class ParlamentaryItemWidget extends StatelessWidget {
  final String name;
  final String email;
  final String phoneNumber;
  final String politicalParty;
  final String imagePath;

  ParlamentaryItemWidget({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.politicalParty,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Container(
      width: double.infinity,
      height: 120,
      child: Card(
        elevation: 5,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 3,
                    offset: Offset(5, 3),
                  )
                ],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(this.imagePath),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        this.name,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.headline6,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.email,
                            color: theme.primaryIconTheme.color,
                            size: theme.primaryIconTheme.size,
                          ),
                          SizedBox(width: 5),
                          Text(
                            this.email,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.phone_android,
                            color: theme.primaryIconTheme.color,
                            size: theme.primaryIconTheme.size,
                          ),
                          SizedBox(width: 5),
                          Text(
                            this.phoneNumber,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.flag,
                            color: theme.primaryIconTheme.color,
                            size: theme.primaryIconTheme.size,
                          ),
                          SizedBox(width: 5),
                          Text(
                            this.politicalParty,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
