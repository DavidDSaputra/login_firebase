import 'package:flutter/material.dart';
import '../routes.dart';
import '../strings.dart';

class SplashSwipeScreen extends StatefulWidget {
  const SplashSwipeScreen({super.key});
  @override
  State<SplashSwipeScreen> createState() => _SplashSwipeScreenState();
}

class _SplashSwipeScreenState extends State<SplashSwipeScreen> {
  final PageController _controller = PageController();
  int currentPage = 0;

  final pages = [
    {
      'icon': Icons.flash_on,
      'title': 'Selamat Datang',
      'desc': 'Aplikasi UTS Mobile Programming',
      'color': Colors.red,
    },
    {
      'icon': Icons.settings_suggest_outlined,
      'title': 'Material 3',
      'desc': 'PERADABAN',
      'color': Colors.red,
    },
    {
      'icon': Icons.lock_outline,
      'title': 'Mulai Sekarang',
      'desc': 'Geser atau tekan tombol untuk ke halaman Login',
      'color': Colors.red,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _controller,
            onPageChanged: (index) => setState(() => currentPage = index),
            itemCount: pages.length,
            itemBuilder: (context, index) {
              final item = pages[index];
              return Container(
                color: item['color'] as Color,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(item['icon'] as IconData, size: 120, color: cs.primary),
                    const SizedBox(height: 20),
                    Text(
                      item['title'] as String,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        item['desc'] as String,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          // indikator dot
          Positioned(
            bottom: 70,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                pages.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: currentPage == index ? 20 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: currentPage == index
                        ? cs.primary
                        : cs.primary.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ),
          // tombol lanjut
          if (currentPage == pages.length - 1)
            Positioned(
              bottom: 25,
              left: 0,
              right: 0,
              child: Center(
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Routes.login);
                  },
                  child: const Text(
                    'Mulai',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
