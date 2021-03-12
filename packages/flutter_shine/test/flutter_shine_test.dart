import 'package:flutter_shine/src/config.dart';
import 'package:flutter_shine/src/controller.dart';
import 'package:flutter_shine/src/light.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  test('checkNullability', () async {
    await Controller.generateLongShadow(Light(), Config());
  });
}
