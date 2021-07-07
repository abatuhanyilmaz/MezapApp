import 'package:flutter/material.dart';

class KrediYukle extends StatelessWidget {
  List<String> kredi = [
    "100",
    "200",
    "300",
  ];

  List<String> tarih = [
    "29",
    "35",
    "45",
  ];

  List<String> islem = [
    "14.99",
    "24.99",
    "36.99",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 30),
            Container(
                height: 50,
                color: Colors.black12,
                child: Center(
                    child: Text("Kredi Yükle",
                        style: TextStyle(fontWeight: FontWeight.bold)))),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(color: Colors.black26, blurRadius: 10)
                            ]),
                        child: Stack(
                          children: [
                            Positioned(
                                top: 15,
                                left: 280,
                                child: Text("YÜKLE",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold))),
                            Container(
                              width: 250,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(Icons.monetization_on),
                                    Text("${kredi[index]} Kredi",
                                        style: TextStyle(fontSize: 13)),
                                    Stack(
                                      children: [
                                        Text("${tarih[index]} TL",
                                            style: TextStyle(
                                              fontSize: 13,
                                            )),
                                      ],
                                    ),
                                    Text("${islem[index]} TL",
                                        style: TextStyle(fontSize: 13)),
                                  ]),
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Positioned(
                                top: 24,
                                left: 132,
                                child: Container(
                                    height: 2, width: 35, color: Colors.black)),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
