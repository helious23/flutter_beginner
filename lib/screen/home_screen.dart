import 'package:flutter/material.dart';
import 'package:splash_screen/components/main_layout.dart';
import 'package:splash_screen/screen/route_one_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: WillPopScope(
          onWillPop: () async {
            // true - pop 가능
            // false - pop 불가능
            final canPop = Navigator.of(context).canPop();
            return canPop;
          },
          child: MainLayout(
            title: 'HomeScreen',
            children: [
              ElevatedButton(
                onPressed: () {
                  print(Navigator.of(context).canPop());
                },
                child: const Text('Can Pop'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).maybePop();
                },
                child: const Text('Maybe Pop'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Pop'),
              ),
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
      ),
    );
  }
}
