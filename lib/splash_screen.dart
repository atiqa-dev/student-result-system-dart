import 'package:flutter/material.dart';
import 'setup_class_details.dart';

class SplashScreenWidget extends StatelessWidget {
  const SplashScreenWidget({super.key});

  static String routePath = '/splashScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A636E),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.school, size: 100, color: Colors.white),
            const SizedBox(height: 20),
            const Text(
              "Smart Result Management",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, SetupClassDetailsWidget.routePath);
              },
              child: const Text("Start"),
            ),
          ],
        ),
      ),
    );
  }
}
