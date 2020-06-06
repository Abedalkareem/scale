import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:scale/scale.dart';

void main() {
  test('adds one to input values', () {
    Scale.setupWith(Size(1280, 720), Size(667, 375));
    expect(50.sh, 95.95202398800599);
    expect(100.sv, 192);
    expect(17.sf, 32.62368815592204);
  });
}
