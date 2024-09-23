// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class addi extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const addi({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          elevation: 0,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 5),
                const SizedBox(height: 5),
                Icon(
                  icon,
                  size: 40,
                ),
                const SizedBox(height: 5),
                Text(
                  label,
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  value,
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 5),
              ]),
        ),
      ],
    );
  }
}
