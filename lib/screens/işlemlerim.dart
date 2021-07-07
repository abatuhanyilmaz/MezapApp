import 'package:flutter/material.dart';

class Islemlerim extends StatelessWidget {
  List<String> kredi = [
    "100",
    "50",
    "70",
    "200",
  ];

  List<String> tarih = [
    "8.01.2021",
    "25.01.2021",
    "2.02.2021",
    "20.03.2021",
  ];

  List<String> islem = [
    "Kredi yükleme",
    "Canlı yayın kredi kesintisi",
    "Canlı yayın kredi kesintisi",
    "Canlı yayın kredi kesintisi",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
            height: 50,
            color: Colors.black12,
            child: Center(
                child: Text("İŞLEMLERİM",
                    style: TextStyle(fontWeight: FontWeight.bold)))),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            Container(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Icon(
                  Icons.monetization_on,
                ),
                SizedBox(width: 5),
                Text("100 Mevcut Kredi",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ]),
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: Colors.black26, blurRadius: 10)
                  ]),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  "${tarih[index] + islem[index] + kredi[index]}",
                                  style: TextStyle(fontSize: 13)),
                            ]),
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(color: Colors.black26, blurRadius: 10)
                            ]),
                      ),
                    );
                  }),
            ),
            Row(
              children: [
                Expanded(
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text("Tümünü İncele",
                        style: TextStyle(color: Colors.white)),
                    onPressed: () {},
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text("Dışarı Aktar",
                        style: TextStyle(color: Colors.white)),
                    onPressed: () {},
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ]),
        )),
      ]),
    );
  }
}
