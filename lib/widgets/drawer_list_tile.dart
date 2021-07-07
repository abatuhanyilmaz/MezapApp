import 'package:flutter/material.dart';

import '../styles/text_style.dart';

class DrawerListTile extends StatelessWidget {
  final String title;
  final Widget pages;

  const DrawerListTile({this.title, this.pages});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: TextStyles.drawerListTileTextStyle),
      onTap: () {
        Navigator.push(
            context, (MaterialPageRoute(builder: (context) => pages)));
      },
    );
  }
}
