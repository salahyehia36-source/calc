import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/test');
              },
              icon: const Icon(Icons.home),
              label: const Text('Navigator.pushNamed'),
            ),
            const SizedBox(height: 10),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/splash');
              },
              icon: const Icon(Icons.home),
              label: const Text('Navigator.pushReplacementNamed'),
            ),
            const SizedBox(height: 10),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/onboarding',
                      (Route<dynamic> route) => false,
                );
              },
              icon: const Icon(Icons.home),
              label: const Text('Navigator.pushNamedAndRemoveUntil'),
            ),
          ],
        ),
      ),
    );
  }
}
