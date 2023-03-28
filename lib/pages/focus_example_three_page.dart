// shift focus to the next TextField in Flutter
import 'package:flutter/material.dart';

class FocusExampleThreePage extends StatefulWidget {
  const FocusExampleThreePage({Key? key}) : super(key: key);

  @override
  State<FocusExampleThreePage> createState() => _FocusExampleThreePageState();
}

class _FocusExampleThreePageState extends State<FocusExampleThreePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Focus Example Three Page'),
        ),
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: const [
                  SizedBox(height: 20),
                  TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: 'TextField',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a lacus a ipsum vehicula egestas. Ut laoreet enim eget justo dictum efficitur. Ut tempus lectus urna, quis porta eros feugiat vitae. Maecenas sed interdum lacus. Donec ut nisi nisl. In at viverra ex, id feugiat velit. Proin eget ex porttitor, accumsan massa ut, lacinia elit. Suspendisse vitae lorem elit. Maecenas condimentum nunc non scelerisque ornare. Curabitur eget tempus lacus. Etiam vel volutpat enim. Sed non metus sed odio aliquet congue ac eget orci. Praesent ornare aliquam posuere. Proin placerat diam varius mauris aliquam tincidunt.'
                      'Cras at ultrices lectus, eget vehicula magna. Aenean sed metus vitae magna ornare condimentum. Cras euismod justo a quam pharetra pharetra. Vivamus feugiat velit enim, ut posuere metus pretium eu. Pellentesque quis vestibulum nunc. Nulla aliquam sem ut est iaculis scelerisque. Ut lobortis sit amet orci at dignissim. Ut blandit elementum magna. Suspendisse porta, metus vitae aliquam faucibus, nisl felis convallis nisl, id semper diam orci eu nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'
                      'Mauris dignissim velit vel ullamcorper pretium. Sed tempus massa sit amet justo tempus mattis in in risus. Morbi ex ipsum, laoreet eu libero at, pretium placerat libero. Fusce rutrum gravida eros vel varius. Nunc vitae velit in nibh tincidunt sagittis in id lectus. Maecenas tincidunt interdum iaculis. Ut neque lacus, laoreet quis pellentesque porta, eleifend non nisl. Pellentesque vel laoreet erat, sit amet iaculis lectus. Integer faucibus ex ornare mauris pellentesque ornare. Nulla auctor elit mi. Cras egestas auctor sodales. Mauris rhoncus nisi et aliquam tincidunt. Pellentesque at urna dui. Duis consectetur est quis rhoncus commodo.'),
                ],
              ),
            ),
          ),
        ),
      );
}
