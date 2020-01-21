<img src="https://github.com/JonathanMonga/flutter_shine.dart/blob/master/images/image_1.png" alt="Image 1" height="40%" width="90%"/>

# Flutter Shine

[![Pub](https://img.shields.io/badge/pub-0.0.1-blue)](https://pub.dev/packages/flutter_shine)
[![Build Status](https://travis-ci.org/JonathanMonga/flutter_shine.svg?branch=master)](https://travis-ci.org/JonathanMonga/flutter_shine)

Flutter widget inspired by [Shine](https://github.com/bigspaceship/shine.js)

## Installation

Add the Package

```yaml
dependencies:
  flutter_shine: ^0.0.1
```

# ❔ Usage

### Import this class

```dart
import 'package:flutter_shine/flutter_shine.dart';
```

### Network giffy dialog

<img src="https://github.com/JonathanMonga/flutter_shine.dart/blob/master/images/image_2.png" align = "right" height = "350" alt="Exemple">

```dart
FlutterShine(
    builder: (BuildContext context, ShineShadow shineShadow) {
        return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
                Text(
                    "Shine",
                    style: TextStyle(
                        fontSize: 100,
                        color: Colors.white,
                        shadows: shineShadow.shadows),
                ),
                Divider(),
                Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                        color: Colors.white, boxShadow: shineShadow.boxShadows),
                )
            ],
        );
    },
),
```
