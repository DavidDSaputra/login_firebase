import 'package:flutter/material.dart';

class NimFooter extends StatelessWidget {
  final String nim;
  const NimFooter({super.key, required this.nim});

  @override
  Widget build(BuildContext context) {
    return Text(
      'NIM: $nim',
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.labelSmall?.copyWith(
        fontSize: 10,
        color: Theme.of(context).colorScheme.outline,
      ),
    );
  }
}
