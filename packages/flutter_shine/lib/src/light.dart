// Copyright 2019 Jonathan Monga. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

/// Creates a new Light instance that can be shared across multiple
/// Shadow instance.
class Light {
  final Point position;
  final double intensity;

  const Light({this.position = const Point(0, 0), this.intensity = 1.0});
}
