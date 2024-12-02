import 'package:flutter/material.dart';

class HourlyForecastWidget extends StatelessWidget {
  final IconData icon;
  final String hours;
  final String temp;
  const HourlyForecastWidget({
    super.key,
    required this.icon,
    required this.hours,
    required this.temp,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        padding: const EdgeInsets.all(
          10,
        ),
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: Column(
          children: [
            Text(
              hours,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Icon(
              icon,
              size: 24,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(temp)
          ],
        ),
      ),
    );
  }
}
