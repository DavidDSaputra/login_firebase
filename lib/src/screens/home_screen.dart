import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../services/auth_service.dart';
import '../routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = AuthService().getCurrentUser();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await AuthService().logout();
              if (context.mounted) {
                Navigator.of(context).pushReplacementNamed(Routes.login);
              }
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Login Berhasil!', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            Text('Email: ${user?.email ?? "Tidak diketahui"}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                 await AuthService().logout();
                  if (context.mounted) {
                    Navigator.of(context).pushReplacementNamed(Routes.login);
                  }
              },
              child: const Text('Logout'),
            )
          ],
        ),
      ),
    );
  }
}
