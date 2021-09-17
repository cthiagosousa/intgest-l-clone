import 'package:flutter/material.dart';
import 'package:intgest_legislativo/utils/routes.dart';
import 'package:intgest_legislativo/models/parliamentary.dart';

class ParliamentaryItemWidget extends StatelessWidget {
  final Parliamentary parliamentary;

  ParliamentaryItemWidget({required this.parliamentary});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Container(
      width: double.infinity,
      height: 120,
      child: InkWell(
        onTap: () => Navigator.pushNamed(
          context,
          Routes.PARLIAMENTARY,
          arguments: parliamentary,
        ),
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
                    image: NetworkImage(this.parliamentary.photoPath),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        this.parliamentary.name,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.headline6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.email,
                            color: theme.primaryIconTheme.color,
                            size: theme.primaryIconTheme.size,
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Text(
                              this.parliamentary.email,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyText1,
                            ),
                          ),
                        ],
                      ),
                      Row(
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
                            this.parliamentary.phoneNumber,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyText1,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.flag,
                            color: theme.primaryIconTheme.color,
                            size: theme.primaryIconTheme.size,
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Text(
                              this.parliamentary.politicalParty,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyText1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
