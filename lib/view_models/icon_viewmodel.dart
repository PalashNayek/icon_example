import 'package:flutter/material.dart';

class IconViewModel extends ChangeNotifier {
  IconData _iconData = Icons.favorite;  // Default icon
  IconData get iconData => _iconData;

  Color _iconColor = Colors.blue;  // Default color
  Color get iconColor => _iconColor;

  double _iconSize = 50.0;  // Default size
  double get iconSize => _iconSize;

  void updateIcon(IconData newIcon) {
    _iconData = newIcon;
    notifyListeners();
  }

  void updateColor(Color newColor) {
    _iconColor = newColor;
    notifyListeners();
  }

  void updateSize(double newSize) {
    _iconSize = newSize;
    notifyListeners();
  }
}
