import 'package:flutter/material.dart';

class AppBarIcon extends StatelessWidget {
  final IconData iconData;
  final Function function;
  final String tooltip;

  const AppBarIcon({this.iconData, this.function, this.tooltip});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black12, borderRadius: BorderRadius.circular(10)),
      child: IconButton(
        icon: Icon(iconData, color: Colors.black26),
        onPressed: function,
        tooltip: tooltip,
      ),
    );
  }
}
