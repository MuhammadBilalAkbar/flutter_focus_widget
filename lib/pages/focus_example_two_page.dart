import 'package:flutter/material.dart';

class FocusExampleTwoPage extends StatefulWidget {
  const FocusExampleTwoPage({Key? key}) : super(key: key);

  @override
  State<FocusExampleTwoPage> createState() => _FocusExampleTwoPageState();
}

class _FocusExampleTwoPageState extends State<FocusExampleTwoPage> {
  final fieldFocusNode = FocusNode();

  @override
  void dispose() {
    fieldFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Focus Example Two Page'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              TextField(
                focusNode: fieldFocusNode,
                autofocus: true,
                decoration: const InputDecoration(
                  hintText: 'TextField',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => FocusManager.instance.primaryFocus?.unfocus(),
                child: const Text('Hide'),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => FocusManager.instance.primaryFocus
                    ?.requestFocus(fieldFocusNode),
                child: const Text('Show'),
              ),
            ],
          ),
        ),
      );
}
