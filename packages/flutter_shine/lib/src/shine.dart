import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_shine/src/config.dart';
import 'package:flutter_shine/src/controller.dart';
import 'package:flutter_shine/src/light.dart';
import 'package:flutter_shine/src/shine_shadow.dart';

//
typedef ShineWidgetBuilder = Widget Function(
    BuildContext context, ShineShadow shineShadow);

class FlutterShine extends StatelessWidget {
  const FlutterShine({
    Key key,
    this.config = const Config(
        blur: 35,
        blurPow: 1,
        numSteps: 10,
        offset: 0.5,
        offsetPow: 2.0,
        opacity: 0.3,
        opacityPow: 1.0,
        shadowColor: Colors.black),
    this.light = const Light(
      intensity: 1,
      position: Point(-100, -100),
    ),
    this.builder,
  })  : assert(builder != null, "Widget Builder must be not null"),
        super(key: key);

  final Config config;
  final Light light;
  final ShineWidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Controller.generateLongShadow(light, config),
      builder: (BuildContext context, AsyncSnapshot<ShineShadow> asyncSnapshot) =>
          builder(context, asyncSnapshot?.data),
    );
  }
}
