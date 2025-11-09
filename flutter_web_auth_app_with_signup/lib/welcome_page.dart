import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  final String username;

  const WelcomePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFa1c4fd), Color(0xFFc2e9fb)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.waving_hand, size: 100, color: Colors.orangeAccent),
            const SizedBox(height: 20),
            Text(
              "Welcome, $username 👋",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
                shadows: [
                  Shadow(
                    blurRadius: 8,
                    color: Colors.black26,
                    offset: Offset(2, 2),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "You have successfully logged in!",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.logout),
              label: const Text("Logout"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
