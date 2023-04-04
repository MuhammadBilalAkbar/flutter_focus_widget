import 'package:flutter/material.dart';

class FocusExampleOnePage extends StatefulWidget {
  const FocusExampleOnePage({Key? key}) : super(key: key);

  @override
  State<FocusExampleOnePage> createState() => _FocusExampleOnePageState();
}

class _FocusExampleOnePageState extends State<FocusExampleOnePage> {
  final field1FocusNode = FocusNode();
  final field2FocusNode = FocusNode();

  @override
  void dispose() {
    field1FocusNode.dispose();
    field2FocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Focus Example One Page'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                TextFormField(
                  focusNode: field1FocusNode,
                  // autofocus enable focus on the field as page gets visible
                  autofocus: true,
                  decoration: const InputDecoration(
                    hintText: 'Field 1',
                    border: OutlineInputBorder(),
                  ),
                  onFieldSubmitted: (_) {
                    // pass focus to the next TextFormField when submit button is tapped on keyboard
                    FocusScope.of(context).requestFocus(field2FocusNode);
                    // field2FocusNode.requestFocus(); // This works same as above
                  },
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 20),
                TextFormField(
                  focusNode: field2FocusNode,
                  decoration: const InputDecoration(
                    hintText: 'Field 2',
                    border: OutlineInputBorder(),
                  ),
                  onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
                  textInputAction: TextInputAction.done,
                ),
              ],
            ),
          ),
        ),
      );
}
