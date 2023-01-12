import 'package:flutter/material.dart';
import 'package:splash_screen/components/main_layout.dart';
import 'package:splash_screen/screen/route_one_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MainLayout(
          title: 'HomeScreen',
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const RouteOneScreen(),
                  ),
                );
              },
              child: const Text('Push'),
            ),
          ],
        ),
      ),
    );
  }
}
