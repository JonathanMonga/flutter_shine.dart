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

### Flutter Shine

See how easy it is to create a shadow on text and on a container.

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

Extremely customizable shadow with a dynamic light positions.

You can customize follows values :

- number of Steps : The density of the shadow
- opacity : The opacity of the shadow
- opacity Power : The opacity power
- offset : The offset of the shadow
- offset Power : The offset power
- blur : The blur of the shadow
- blur Power : The blur power
- shadow Color : The color of the shadow

<img src="https://github.com/JonathanMonga/flutter_shine.dart/blob/master/images/image_3.gif" align = "right" height = "350" alt="Exemple">

```dart
FlutterShine(
    [config: Config(shadowColor: Colors.red[300]),]
    [light: Light(intensity: 1, position: Point(x, y)),]
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
