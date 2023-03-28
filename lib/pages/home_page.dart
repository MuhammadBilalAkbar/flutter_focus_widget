import 'package:flutter/material.dart';

import 'focus_example_one_page.dart';
import 'focus_example_two_page.dart';
import 'focus_example_three_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Focus Widget'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 10,
          ),
          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FocusExampleOnePage(),
                    ),
                  ),
                  child: const Text('Example One'),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FocusExampleTwoPage(),
                    ),
                  ),
                  child: const Text('Example Two'),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FocusExampleThreePage(),
                    ),
                  ),
                  child: const Text('Example Three'),
                ),
              ],
            ),
          ),
        ),
      );
}
