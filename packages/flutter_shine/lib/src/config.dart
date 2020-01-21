// Copyright 2019 Jonathan Monga. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

/// Creates a new Config instance that can be shared across multiple
/// Shadow instance.
///
/// Valid settings are:
///  * number of Steps
///  * opacity
///  * opacity Power
///  * offset
///  * offset Power
///  * blur
///  * blur Power
///  * shadow RGB
class Config {
  final int numSteps;
  final double opacity;
  final double opacityPow;
  final double offset;
  final double offsetPow;
  final double blur;
  final double blurPow;
  final Color shadowColor;

  ///Create new Configuration Object or if it created for first time return that instance.
  ///  * number of Steps
  ///  * opacity
  ///  * opacity Power
  ///  * offset
  ///  * offset Power
  ///  * blur
  ///  * blur Power
  ///  * shadow RGB
  const Config(
      {this.numSteps,
      this.opacity,
      this.opacityPow,
      this.offset,
      this.offsetPow,
      this.blur,
      this.blurPow,
      this.shadowColor})
      : assert(numSteps > 0.0 && numSteps <= 64.0),
        assert(opacity > 0.0 && opacity <= 1.0),
        assert(opacityPow > 0.0 && opacityPow <= 4.0),
        assert(offset > 0.0 && offset <= 1.0),
        assert(offsetPow > 0.0 && offsetPow <= 4.0),
        assert(blur > 0.0 && blur <= 128.0),
        assert(blurPow > 0.0 && blurPow <= 4.0);

  Config copyWith(
          {int numSteps,
          double opacity,
          double opacityPow,
          double offset,
          double offsetPow,
          double blur,
          double blurPow,
          Color shadowColor}) =>
      Config(
        numSteps: numSteps ?? this.numSteps,
        opacity: opacity ?? this.opacity,
        opacityPow: opacityPow ?? this.opacityPow,
        offset: offset ?? this.offset,
        offsetPow: offsetPow ?? this.offsetPow,
        blur: blur ?? this.blur,
        blurPow: blurPow ?? this.blurPow,
        shadowColor: shadowColor ?? this.shadowColor,
      );
}
