import 'package:flutter/material.dart';
import 'package:task_api/home_page.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});
  @override
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ));
                },
                child: const Text('Go to Task'))
          ],
        ),
      )),
    );
  }
}
