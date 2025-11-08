import 'package:flutter/material.dart';
import 'routes.dart';
import 'widgets/nim_footer.dart';
import 'strings.dart';
import 'package:flutter/gestures.dart';


class UtsApp extends StatelessWidget {
  const UtsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: S.appTitle,
      debugShowCheckedModeBanner: false,
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        },
      ),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      initialRoute: Routes.splash_swipe,
      routes: Routes.map,
      builder: (context, child) => Stack(
        children: [
          if (child != null) child,
          const Positioned(
            left: 8,
            right: 8,
            bottom: 6,
            child: NimFooter(nim: S.nim),
          ),
        ],
      ),
    );
  }
}
