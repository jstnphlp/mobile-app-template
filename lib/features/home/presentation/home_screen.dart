import 'package:flutter/material.dart';

import '../../../core/config/environment.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mobile App Template')),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.phone_android, size: 64),
                const SizedBox(height: 20),
                const Text(
                  'Ready to build',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Flutter starter with routing, Riverpod, and optional Supabase.',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                Text(
                  Environment.hasSupabaseConfig
                      ? 'Supabase configured'
                      : 'Demo mode • Supabase not configured',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
