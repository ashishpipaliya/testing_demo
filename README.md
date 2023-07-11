# Flutter Testing Demo

### ✨Flutter Doctor Summary

```
[✓] Flutter (Channel stable, 3.10.5, on macOS 13.4 22F66 darwin-x64, locale en-GB)
[✓] Android toolchain - develop for Android devices (Android SDK version 34.0.0)
[✓] Xcode - develop for iOS and macOS (Xcode 14.3.1)
[✓] Chrome - develop for the web
[✓] Android Studio (version 2022.2)
[✓] VS Code (version 1.79.2)
[✓] Connected device (2 available)
[✓] Network resources

• No issues found!
```

### ✨Installation
Clone repo cd into it and run below commands

```dart
  flutter pub get
  flutter run
```

<img src="https://i.ibb.co/RBrGPv7/Screenshot-2023-07-11-at-10-54-08-AM.png"></img>

### ✨Run tests
In `main.dart` file, change home to `Counter()` to run tests on counter and run below command in terminal
```
flutter test test/counter_test.dart
```

In `main.dart` file, change home to `ListViewWidget()` to run tests on list view and run below command in terminal
```
flutter test test/list_view_test.dart
```

In `main.dart` file, change home to `TextFieldWidget()` to run tests on Text field and run below command in terminal
```
flutter test test/text_field_test.dart
```