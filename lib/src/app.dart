import 'package:flutter/material.dart';

class UtsApp extends StatelessWidget {
  const UtsApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: const Scaffold(body: Center(child: Text('Scaffolded'))),
    );
  }
}
