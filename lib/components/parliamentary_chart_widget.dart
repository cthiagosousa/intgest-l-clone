import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ParliamentaryChartWidget extends StatelessWidget {
  const ParliamentaryChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 300,
          child: PieChart(
            PieChartData(
              sectionsSpace: 3,
              centerSpaceRadius: 70,
              sections: [
                PieChartSectionData(
                  value: 80,
                  color: theme.primaryColor,
                  titleStyle: theme.textTheme.headline3,
                ),
                PieChartSectionData(
                  value: 20,
                  color: theme.accentColor,
                  titleStyle: theme.textTheme.headline3,
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 15,
                    height: 15,
                    color: theme.primaryColor,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "REQ",
                    style: theme.textTheme.headline6,
                  )
                ],
              ),
              SizedBox(width: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 15,
                    height: 15,
                    color: theme.accentColor,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "PDIND",
                    style: theme.textTheme.headline6,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
