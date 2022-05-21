# Stock Average Price Calculator

A Mobile Application that helps to calculate the Stock Average Price based on user inputs such as first buy and second buy if the stocks.

### Programming Languages:

Dart

### Softwares/Packages:

1. google_fonts: ^2.1.0
2. flutter_launcher_icons: ^0.9.2

#### google_fonts:

Usage:

```dart
dependencies:
    flutter:
        sdk: flutter
    google_fonts: ^2.1.0
```

#### flutter_launcher_icons:

To add the application icon

Go to root folder :
stock_average_calculator\android\app\src\main\res
mipmap_xxhdpi\ic_launcher.png

change this file: ic_launcher in all the folders and paste your desired Icon Image with the same name.

```dart
dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_launcher_icons: ^0.9.2
flutter_icons:
  android: true
  ios: true
  image_path: "assets/stockcandle.png"
/* Make sure you added the assets folder or Image folder for the respective image  */
assets:
    - assets/images/dice_icon/
```

After adding all the packages just run the following command:

```bash
flutter pub run flutter_launcher_icons:main
```
