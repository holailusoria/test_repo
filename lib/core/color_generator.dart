import 'dart:math';
import 'dart:ui';

///class for generating colors for test application
class ColorGenerator {
  static final _randomCore = Random();

  /// generate a random color
  static Color generateColor() {
    final Color generatedColor = Color.fromARGB(
      _randomCore.nextInt(256),
      _randomCore.nextInt(256),
      _randomCore.nextInt(256),
      _randomCore.nextInt(256),
    );

    return generatedColor;
  }
}
