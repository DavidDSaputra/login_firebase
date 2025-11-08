import 'package:flutter/material.dart';
import '../routes.dart';
import '../strings.dart';

class Splash3Screen extends StatefulWidget {
  const Splash3Screen({super.key});
  @override
  State<Splash3Screen> createState() => _Splash3ScreenState();
}

class _Splash3ScreenState extends State<Splash3Screen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500), () {
      if (!mounted) return;
      Navigator.pushReplacementNamed(context, Routes.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: cs.tertiaryContainer,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.flutter_dash, size: 96, color: cs.onTertiaryContainer),
            const SizedBox(height: 12),
            Text(
              S.appTitle,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: cs.onTertiaryContainer,
                    fontWeight: FontWeight.w700,
                  ),
            ),
            const SizedBox(height: 6),
            Text('Splash 3', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
      ),
    );
  }
}
