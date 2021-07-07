import 'package:flutter/material.dart';

class Profilm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Container(
              height: 50,
              color: Colors.black12,
              child: Center(
                  child: Text("Profilim",
                      style: TextStyle(fontWeight: FontWeight.bold)))),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 10),
                Container(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.black12,
                        child: Text(
                          "Resim\nYok",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Positioned(
                          left: 90,
                          top: 80,
                          child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.black26,
                              child: Icon(Icons.photo_camera_outlined,
                                  size: 18, color: Colors.black))),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  child: ListTile(
                      leading: Icon(Icons.star, color: Colors.red, size: 13),
                      title: Text("Servet TÖRER",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold))),
                ),
                SizedBox(height: 10),
                Card(
                  child: ListTile(
                      leading: Icon(Icons.star, color: Colors.red, size: 13),
                      title: Row(
                        children: [
                          Text("545454545454",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold)),
                          SizedBox(width: 10),
                          Icon(Icons.cloud_done, color: Colors.green, size: 18),
                        ],
                      )),
                ),
                SizedBox(height: 10),
                Card(
                  child: ListTile(
                      leading: Icon(Icons.star, color: Colors.red, size: 13),
                      title: Text("Ev Adresi",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold))),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Text("Ayarları Kaydet",
                              style: TextStyle(color: Colors.white)),
                          onPressed: () {},
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Text("Parola Güncelle",
                              style: TextStyle(color: Colors.white)),
                          onPressed: () {},
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Text("Üyeliği Dondur",
                              style: TextStyle(color: Colors.white)),
                          onPressed: () {},
                          color: Colors.pink,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
