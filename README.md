## 1. Research: Flutter Focus Widget/Class

- Keywords:
    - flutter focus widget
    - flutter focus class
    - flutter remove focus from textfield when click outside
    - flutter focusnode
    - flutter focusnode unfocus
    - flutter focus on textfield
    - focusnode textfield flutter
    - flutter focusscope
    - flutter focus next field
    - flutter keyboard listener
    - flutter hide keyboard on scroll
    - flutter textfield disable keyboard
    - flutter clear text field on submit
    - dismiss keyboard flutter
    - flutter focusnode textfield
    - flutter focusnode set focus
    - flutter focusnode next
    - unfocus textformfield
    - flutter unfocus all textfield
    - flutter set focus to widget
    - unfocus textfield flutter
    - what is focusnode in flutter
    - focusnode flutter example
    - flutter textInputAction
    - flutter textformfield loses focus
- Video
  Title: Flutter Focus Widget/Class - Flutter Dismiss Keyboard, set Focus or Unfocus TextField and
  TextFormField

## 2. Research: Competitors

**Flutter Videos/Articles**

- 979: https://www.youtube.com/watch?v=S7EMAsTcnpc
- 13K: https://www.youtube.com/watch?v=MKrEJtheGPk
- 4.6K: https://www.youtube.com/watch?v=1Hu1SsW4Lc0
- 13K: https://www.youtube.com/watch?v=SftssVoNB5Y
- 7.9K: https://www.youtube.com/watch?v=9RFQUdwliIk
- https://api.flutter.dev/flutter/widgets/Focus-class.html
- https://docs.flutter.dev/development/ui/advanced/focus
- https://medium.flutterdevs.com/focusnode-in-flutter-4a8613d7e4f6
- https://medium.com/@omlondhe/keyboard-focus-in-flutter-d574a1b77d39
- https://api.flutter-io.cn/flutter/widgets/Focus-class.html
- https://www.fluttercampus.com/guide/350/auto-focus-textfield/

**Android/Swift/React Videos**

- 3.3K: https://www.youtube.com/watch?v=iXOSOyF9nus
- 14K: https://www.youtube.com/watch?v=9mr9nL8SyO4
- 9.4K: https://www.youtube.com/watch?v=S5qYHcl9M6A
- 1.2K: https://www.youtube.com/watch?v=SGWOEDOs3yk
- 5.4K: https://www.youtube.com/watch?v=QZFmPj5UzAw
- 8.9K: https://www.youtube.com/watch?v=9OC8e0OULBg
- 10K: https://www.youtube.com/watch?v=5BYPaQs_NAo
- 3.2K: https://www.youtube.com/shorts/tWCjtW8Tyeg
- 10K: https://www.youtube.com/watch?v=_IIKUtvla58
- https://xabaras.medium.com/android-edittext-avoid-showing-software-keyboard-on-focus-10ada7f69628
- https://medium.com/android-news/android-how-to-synchronize-keyboard-with-edittext-focus-8c1113797a15
- https://www.tutorialspoint.com/how-to-show-soft-keyboard-based-on-android-edittext-is-focused
- https://www.tutorialspoint.com/how-to-show-a-soft-keyboard-based-on-android-edittext-focused-using-kotlin
- https://developer.apple.com/forums/thread/106000
- https://www.oodlestechnologies.com/blogs/managing-the-keyboard-with-text-field-focus-in-swift/
- https://www.codedaily.io/tutorials/Focus-on-the-Next-TextInput-when-Next-Keyboard-Button-is-Pressed-in-React-Native
- https://reactnativeforyou.com/how-to-make-the-textinput-on-focus-in-react-native/
- https://github.com/software-mansion/react-native-screens/issues/1342

**Great Features**

- Focus class or widget manages a FocusNode to allow keyboard focus to be given to this widget and
  its descendants. It is used to give focus to specific textfields which are requested to focus.
- You can find more features
  at [https://api.flutter.dev/flutter/widgets/Focus-class.html](https://api.flutter.dev/flutter/widgets/Focus-class.html)
  .

**Problems from Videos**

- Question: I have a page with 10 TextFormFields. How should I use to focus to show empty
  TextFormField when click submit button?
  <br/> Follow this
  link: [https://stackoverflow.com/questions/48927928/how-to-add-clear-button-to-textfield-widget](https://stackoverflow.com/questions/48927928/how-to-add-clear-button-to-textfield-widget)
- Question: How to block third party keyboard in flutter app?
  <br/> Answer: Follow this
  link: [https://stackoverflow.com/questions/68185632/how-to-disable-3rd-party-keyboard-use-in-flutter](https://stackoverflow.com/questions/68185632/how-to-disable-3rd-party-keyboard-use-in-flutter)

**Problems from Flutter Stackoverflow**

- https://stackoverflow.com/questions/48927928/how-to-add-clear-button-to-textfield-widget
- https://stackoverflow.com/questions/68185632/how-to-disable-3rd-party-keyboard-use-in-flutter
- https://stackoverflow.com/questions/55306855/hide-keyboard-on-scroll-in-flutter
- https://stackoverflow.com/questions/46551268/when-the-keyboard-appears-the-flutter-widgets-resize-how-to-prevent-this

## 3. Video Structure

**Main Points / Purpose Of Lesson**

1. This video will help you to learn how to focus keyboard on textfields or any specific widgets.
2. In this video, you will learn:
    - How to focus on textfields in a form
    - How to hide/show the keyboard when user interacts with any specific widget
3. By watching this video, you have learned how to focus and unfocus keyboard in flutter textfields
   or textformfields.

**The Structured Main Content**

1. In this project, there are three examples shown for Focus widget of flutter.
2. `focus_example_one_page.dart`, shows how to focus to next TextField or TextFormField in Flutter
   and unfocus on the last field using `focus`, `unfocus`, `requestFocus` properties.
   <br/> Initialize two `FocusNode`s:

```dart

final field1FocusNode = FocusNode();
final field2FocusNode = FocusNode();
```

Also dispose them in the end:

```dart
  @override
void dispose() {
  field1FocusNode.dispose();
  field2FocusNode.dispose();
  super.dispose();
}
```

`body` of this page has a `Column` and column has two children as `TextFormField`.
<br/> **First `TextFormField` is**:

```dart 
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
```

- Assign `field1FocusNode` to the `focusNode` property.
- If `autofocus` property of `TextField` or `TextFormField` is set to `true` then when we open the
  page, the focus is automatically given to the that specific field.
- For `onFieldSubmitted`, set the focus to the next `TextFormField` whose `focusNode` name
  is `field2FocusNode` using `FocusScope.of(context).requestFocus(field2FocusNode);` or
  `field2FocusNode.requestFocus();`
- `textInputAction` is set to next which means next button or icon will be shown on the keyboard
  when keyboard is opened for this field.
  <br/> **Second `TextFormField` is**:

```dart 
                TextFormField(
                  focusNode: field2FocusNode,
                  decoration: const InputDecoration(
                    hintText: 'Field 2',
                    border: OutlineInputBorder(),
                  ),
                  onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
                  textInputAction: TextInputAction.done,
                ),
```

- Assign `field2FocusNode` to the `focusNode` property.
- For `onFieldSubmitted`, `unfocus` from current field. It hides the keyboard and removes the cursor
  from this field.

3. `focus_example_two_page.dart` shows how to hide/show keyboard | TextField Focus/Unfocus.
   <br/> Initialize the focusNode, and also dispose it when we navigate to any other page.

```dart

final fieldFocusNode = FocusNode();

@override
void dispose() {
  fieldFocusNode.dispose();
  super.dispose();
}
```

- It's body has a `Column` and column has one `TextFormField` and two `ElevatedButton`s to show or
  hide the keyboard using `focus` and `unfocus`.

```dart 
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
```

- For `TextField`, `focusNode` is set to `fieldFocusNode` and `autofocus` is set to true.
- When first button is pressed, `FocusManager.instance.primaryFocus?.unfocus(),` is used
  to `unfocus` from the `TextField`.
- When second button is pressed, `FocusManager.instance.primaryFocus?.requestFocus(fieldFocusNode),`
  is used to `focus` on the `TextField`.

4. `focus_example_three_page.dart` shows how to dismiss the keyboard in `SingleChildScrollView` when
   user scroll under textfield.

```dart 

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
```

- `autofocus` for `TextField` is set to true.
- Under the `TextField` there is a lot of text to read for which we have to scroll down.
- When `TextField` has focus and we scroll down on screen then
  use `keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,` to `unfocus` from
  the `TextField`.

5. **Note:**
   <br/>For flutter 2.0 or latest and for flutter < 2: see this
   article [https://stackoverflow.com/questions/44991968/how-can-i-dismiss-the-on-screen-keyboard](https://stackoverflow.com/questions/44991968/how-can-i-dismiss-the-on-screen-keyboard)
   .
