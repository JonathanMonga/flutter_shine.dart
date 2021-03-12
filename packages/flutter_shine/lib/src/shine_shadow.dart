import 'package:flutter/widgets.dart';

/// ShineShadow wrap text shadow and box shadow.
/// 
class ShineShadow {
  List<Shadow>? _shadows;

  List<Shadow>? get shadows => this._shadows;
  set shadows(List<Shadow>? shadows) {
    this._shadows = shadows;
  }

  List<BoxShadow> get boxShadows {
    return List<BoxShadow>.generate(this._shadows!.length, (index) {
      return BoxShadow(
        blurRadius: this._shadows![index].blurRadius,
        color: this._shadows![index].color,
        offset: this._shadows![index].offset,
      );
    });
  }
}
