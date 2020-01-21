// Copyright 2019 Jonathan Monga. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math' as math;

/// Class to get a Gaussian function
class Gaussian {
  // return phi(x) = standard Gaussian PDF
  static double _phi(double x) {
    return math.exp(-x * x / 2) / math.sqrt(2 * math.pi);
  }

  // return Phi(z) = standard Gaussian CDF using Taylor approximation
  static double _phiZ(double z) {
    if (z < -8.0) return 0.0;
    if (z > 8.0) return 1.0;
    double sum = 0.0, term = z;
    for (int i = 3; sum + term != sum; i += 2) {
      sum = sum + term;
      term = term * z * z / i;
    }
    return 0.5 + sum * _phi(z);
  }

  // return Phi(z, mu, sigma) = Gaussian CDF with mean mu and stddev sigma
  static double _phiZMuSigma(double z, double mu, double sigma) {
    return _phiZ((z - mu) / sigma);
  }

  static double getPhi(double _value, double _mu, double _sigma) {
    double z = _value;
    double mu = _mu;
    double sigma = _sigma;
    return _phiZMuSigma(z, mu, sigma);
  }
}
