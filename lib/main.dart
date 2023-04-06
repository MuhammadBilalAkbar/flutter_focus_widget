import 'package:flutter/material.dart';

import 'my_app.dart';

void main() => runApp(const MyApp());

/// TODO: Focus-class Official Example 1
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   static const String _title = 'Flutter Code Sample';
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: Scaffold(
//         appBar: AppBar(title: const Text(_title)),
//         body: const MyStatefulWidget(),
//       ),
//     );
//   }
// }
//
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({super.key});
//
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }
//
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   Color color = Colors.white;
//
//   KeyEventResult handleKeyPress(node, event) {
//     if (event is RawKeyDownEvent) {
//       debugPrint(
//           'Focus node ${node.debugLabel} got key event: ${event.logicalKey}');
//       if (event.logicalKey == LogicalKeyboardKey.keyR) {
//         debugPrint('Changing color to red.');
//         setState(() {
//           color = Colors.red;
//         });
//         return KeyEventResult.handled;
//       } else if (event.logicalKey == LogicalKeyboardKey.keyG) {
//         debugPrint('Changing color to green.');
//         setState(() {
//           color = Colors.green;
//         });
//         return KeyEventResult.handled;
//       } else if (event.logicalKey == LogicalKeyboardKey.keyB) {
//         debugPrint('Changing color to blue.');
//         setState(() {
//           color = Colors.blue;
//         });
//         return KeyEventResult.handled;
//       }
//     }
//     return KeyEventResult.ignored;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final TextTheme textTheme = Theme.of(context).textTheme;
//     return FocusScope(
//       debugLabel: 'Scope',
//       autofocus: true,
//       child: DefaultTextStyle(
//         style: textTheme.headlineMedium!,
//         child: Focus(
//           onKey: handleKeyPress,
//           debugLabel: 'Button',
//           child: Builder(
//             builder: (BuildContext context) {
//               final focusNode = Focus.of(context);
//               final hasFocus = focusNode.hasFocus;
//               return GestureDetector(
//                 onTap: () {
//                   if (hasFocus) {
//                     focusNode.unfocus();
//                   } else {
//                     focusNode.requestFocus();
//                   }
//                 },
//                 child: Center(
//                   child: Container(
//                     width: 400,
//                     height: 100,
//                     alignment: Alignment.center,
//                     color: hasFocus ? color : Colors.white,
//                     child: Text(hasFocus
//                         ? "I'm in color! Press R,G,B!"
//                         : 'Press to focus'),
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

/// TODO: Focus-class Official Example 2
// import 'package:flutter/material.dart';
//
// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   static const String _title = 'Flutter Code Sample';
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: _title,
//       home: MyStatelessWidget(),
//     );
//   }
// }
//
// class FocusableText extends StatelessWidget {
//   const FocusableText(
//       this.data, {
//         super.key,
//         required this.autofocus,
//       });
//
//   /// The string to display as the text for this widget.
//   final String data;
//
//   /// Whether or not to focus this widget initially if nothing else is focused.
//   final bool autofocus;
//
//   @override
//   Widget build(BuildContext context) {
//     return Focus(
//       autofocus: autofocus,
//       child: Builder(builder: (BuildContext context) {
//         // The contents of this Builder are being made focusable. It is inside
//         // of a Builder because the builder provides the correct context
//         // variable for Focus.of() to be able to find the Focus widget that is
//         // the Builder's parent. Without the builder, the context variable used
//         // would be the one given the FocusableText build function, and that
//         // would start looking for a Focus widget ancestor of the FocusableText
//         // instead of finding the one inside of its build function.
//         return Container(
//           padding: const EdgeInsets.all(8.0),
//           // Change the color based on whether or not this Container has focus.
//           color: Focus.of(context).hasPrimaryFocus ? Colors.black12 : null,
//           child: Text(data),
//         );
//       }),
//     );
//   }
// }
//
// class MyStatelessWidget extends StatelessWidget {
//   const MyStatelessWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         itemBuilder: (BuildContext context, int index) => FocusableText(
//           'Item $index',
//           autofocus: index == 0,
//         ),
//         itemCount: 50,
//       ),
//     );
//   }
// }

/// TODO: Focus-class Official Example 3
// import 'package:flutter/material.dart';
//
// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   static const String _title = 'Flutter Code Sample';
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: _title,
//       home: MyStatefulWidget(),
//     );
//   }
// }
//
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({super.key});
//
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }
//
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   int focusedChild = 0;
//   List<Widget> children = <Widget>[];
//   List<FocusNode> childFocusNodes = <FocusNode>[];
//
//   @override
//   void initState() {
//     super.initState();
//     // Add the first child.
//     _addChild();
//   }
//
//   @override
//   void dispose() {
//     for (final node in childFocusNodes) {
//       node.dispose();
//     }
//     super.dispose();
//   }
//
//   void _addChild() {
//     // Calling requestFocus here creates a deferred request for focus, since the
//     // node is not yet part of the focus tree.
//     childFocusNodes
//         .add(FocusNode(debugLabel: 'Child ${children.length}')..requestFocus());
//
//     children.add(Padding(
//       padding: const EdgeInsets.all(2.0),
//       child: ActionChip(
//         focusNode: childFocusNodes.last,
//         label: Text('CHILD ${children.length}'),
//         onPressed: () {},
//       ),
//     ));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Wrap(
//           children: children,
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             focusedChild = children.length;
//             _addChild();
//           });
//         },
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
