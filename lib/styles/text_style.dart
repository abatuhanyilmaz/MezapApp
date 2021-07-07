import 'package:flutter/material.dart';

abstract class TextStyles {
  static TextStyle get tabTextStyle {
    return TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0);
  }

  static TextStyle get drawerListTileTextStyle {
    return TextStyle(color: Colors.white);
  }

  static TextStyle get pinkText {
    return TextStyle(color: Colors.pink, fontWeight: FontWeight.bold);
  }

  static TextStyle get drawerProfileTitleTextStyle {
    return TextStyle(color: Colors.amber);
  }
}
