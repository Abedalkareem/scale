library scale;

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

/// A class to help you scale your design on bigger or smaller screens to achieve the same design look.
class Scale {
  static Size? size;
  static Size? _deviceScreenSize;

  static num get _horizontallyScaleFactor {
    if (_checkIfSetupNotDone()) {
      return 1;
    }
    return _deviceScreenSize!.width / size!.width;
  }

  static num get _verticallyScaleFactor {
    if (_checkIfSetupNotDone()) {
      return 1;
    }
    if (_deviceScreenSize == null) {
      return 1;
    }
    return _deviceScreenSize!.height / size!.height;
  }

  static num get _fontScaleFactor {
    if (_checkIfSetupNotDone()) {
      return 1;
    }
    if (_deviceScreenSize == null) {
      return 1;
    }
    return _deviceScreenSize!.width / size!.width;
  }

  /// Setup the screen with a [context] and the [size] you will use.
  /// So, if you have a design with 1280 * 720. You will pass first the context
  /// then the design size.
  ///
  /// ```dart
  ///   Scale.setup(context, Size(1280, 720))
  /// ```
  static void setup(BuildContext context, Size screenSize) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    _deviceScreenSize = mediaQuery.size;
    size = screenSize;
  }

  /// Setup the screen with the device screen [Size] and the [size] you will use.
  /// So, if you have a design with 1280 * 720. You will pass first the device
  /// screen size then the design size.
  ///
  /// ```dart
  ///   Scale.setup(deviceScreenSize, Size(1280, 720))
  /// ```
  static void setupWith(Size deviceScreenSize, Size screenSize) {
    _deviceScreenSize = deviceScreenSize;
    size = screenSize;
  }

  /// Get the number scaled horizontally.
  static num scaleHorizontally(num number) {
    return number * _horizontallyScaleFactor;
  }

  /// Get the number scaled vertically.
  static num scaleVertically(num number) {
    return number * _verticallyScaleFactor;
  }

  /// Get the font scaled vertically.
  static num scaleFont(num number) {
    return number * _fontScaleFactor;
  }

  static bool _checkIfSetupNotDone() {
    final isSetupNotDone = size == null;
    if (isSetupNotDone && kDebugMode) {
      assert(false,
          'You need to setup the screen size first. Use Scale.setup(context, Size(1280, 720))');
    }
    return isSetupNotDone;
  }
}

/// An extension to make it easier to apply scale on number.
extension ScreenExtension on num {
  /// Get the number scaled horizontally.
  num get sh {
    return Scale.scaleHorizontally(this);
  }

  /// Get the number scaled vertically.
  num get sv {
    return Scale.scaleVertically(this);
  }

  /// Get the font scaled vertically.
  num get sf {
    return Scale.scaleFont(this);
  }
}

/// An extension to make it easier to apply scale on number.
extension ScreenIntExtension on int {
  /// Get the number scaled horizontally.
  int get sh {
    return Scale.scaleHorizontally(this).toInt();
  }

  /// Get the number scaled vertically.
  int get sv {
    return Scale.scaleVertically(this).toInt();
  }

  /// Get the font scaled vertically.
  int get sf {
    return Scale.scaleFont(this).toInt();
  }
}

/// An extension to make it easier to apply scale on number.
extension ScreenDoubleExtension on double {
  /// Get the number scaled horizontally.
  double get sh {
    return Scale.scaleHorizontally(this).toDouble();
  }

  /// Get the number scaled vertically.
  double get sv {
    return Scale.scaleVertically(this).toDouble();
  }

  /// Get the font scaled vertically.
  double get sf {
    return Scale.scaleFont(this).toDouble();
  }
}
