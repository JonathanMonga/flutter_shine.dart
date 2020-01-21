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
    this.config = const Config(),
    this.light = const Light(),
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
      builder:
          (BuildContext context, AsyncSnapshot<ShineShadow> asyncSnapshot) =>
              builder(context, asyncSnapshot?.data),
    );
  }
}
