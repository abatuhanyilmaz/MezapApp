import 'package:flutter/material.dart';

import '../styles/text_style.dart';

class DrawerHeaderProfile extends StatelessWidget {
  final String title;

  const DrawerHeaderProfile({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: DrawerHeader(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 50,
                backgroundColor: Colors.amber,
                child: Center(
                    child: CircleAvatar(
                        radius: 47, backgroundColor: Colors.white))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Kullanıcı Adı",
                  style: TextStyles.drawerProfileTitleTextStyle),
            ),
          ],
        ),
        decoration: BoxDecoration(),
      ),
    );
  }
}
