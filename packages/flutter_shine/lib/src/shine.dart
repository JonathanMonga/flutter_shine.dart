import 'package:flutter/material.dart';
import 'package:flutter_shine/src/config.dart';
import 'package:flutter_shine/src/controller.dart';
import 'package:flutter_shine/src/light.dart';
import 'package:flutter_shine/src/shine_shadow.dart';

/// The function use to create widgets
typedef ShineWidgetBuilder = Widget Function(BuildContext context, ShineShadow? shineShadow);

/// Widget to create custom, managed, light-based shadow in a very simple way.
///
/// The following properties are optional:
///
/// - You can apply a [configuration] that define all shadow properties.
///
/// - You can specify a [light] that modifies the shadow properties
///
class FlutterShine extends StatelessWidget {
  const FlutterShine({
    Key? key,
    this.config = const Config(),
    this.light = const Light(),
    required this.builder,
  }) : super(key: key);

  final Config config;
  final Light light;
  final ShineWidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Controller.generateLongShadow(light, config),
      builder: (BuildContext context, AsyncSnapshot<ShineShadow> asyncSnapshot) => builder(context, asyncSnapshot.data),
    );
  }
}
