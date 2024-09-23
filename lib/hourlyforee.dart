// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class hourlyfore extends StatelessWidget {
  final IconData icon;
  final String time;
  final String value;

  const hourlyfore({
    super.key,
    required this.icon,
    required this.time,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(children: [
          const SizedBox(height: 5),
          Text(
            time,
            style: const TextStyle(fontSize: 22),
          ),
          const SizedBox(height: 5),
          Icon(
            icon,
            size: 40,
          ),
          const SizedBox(height: 5),
          Text(
            value,
            style: const TextStyle(fontSize: 22),
          ),
          const SizedBox(height: 5),
        ]),
      ),
    );
  }
}
