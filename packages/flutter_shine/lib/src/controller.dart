// Copyright 2019 Jonathan Monga. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_shine/src/config.dart';
import 'package:flutter_shine/src/light.dart';
import 'package:flutter_shine/src/shine_shadow.dart';

class Controller {
  ///Draw this shadow with based on a light source
  static Future<ShineShadow> generateLongShadow(
      Light light, Config config) async {
    double distance = math.sqrt(light.position.x * light.position.x +
        light.position.y * light.position.y);
    distance = math.max(32, distance); // keep a min amount of shadow

    List<Shadow> shadows = List<Shadow>.generate(config.numSteps, (int index) {
      double ratio = index / config.numSteps;

      double ratioOpacity = math.pow(ratio, config.opacityPow) as double;
      double ratioOffset = math.pow(ratio, config.offsetPow) as double;
      double ratioBlur = math.pow(ratio, config.blurPow) as double;

      double opacity =
          light.intensity * math.max(0, config.opacity * (1.0 - ratioOpacity));
      double offsetX = -config.offset * light.position.x * ratioOffset;
      double offsetY = -config.offset * light.position.y * ratioOffset;
      double blurRadius = distance * config.blur * ratioBlur / 512;

      return _getShadow(
          config.shadowColor, opacity, offsetX, offsetY, blurRadius);
    });

    return ShineShadow()..shadows = shadows;
  }

  static Shadow _getShadow(Color shadowRGB, double opacity, double offsetX,
      double offsetY, double blurRadius) {
    return Shadow(
      blurRadius: blurRadius,
      color: shadowRGB.withOpacity(opacity),
      offset: Offset(offsetX, offsetY),
    );
  }
}
