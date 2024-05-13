import 'package:flutter/widgets.dart';

extension SpaceWidgetsForDouble on double {
  ///To add space vertically
  Widget get height => SizedBox(
        height: this,
      );

  ///To add space horizontally
  Widget get width => SizedBox(
        width: this,
      );
}

extension SpaceWidgetsForNum on num {
  ///To add space vertically
  Widget get height => SizedBox(
        height: toDouble(),
      );

  ///To add space horizontally
  Widget get width => SizedBox(
        width: toDouble(),
      );
}
