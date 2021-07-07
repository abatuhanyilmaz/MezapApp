import 'package:flutter/material.dart';

class BildirimAyarlari extends StatelessWidget {
  List<String> title = [
    "Takip Ettiğim Mezat yayınlarını sms olarak bildir",
    "Beni takip edenleri bildir",
    "Kategorilerde satışa izin ver",
    "Mağazamı 'Mağazalar' lisetesinde göster",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 50),
        Container(
            height: 50,
            color: Colors.black12,
            child: Center(
                child: Text("Bildirim Ayarları",
                    style: TextStyle(fontWeight: FontWeight.bold)))),
        Expanded(
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(value: false, onChanged: (value) {}),
                            Text(title[index], style: TextStyle(fontSize: 13)),
                          ]),
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: Colors.black26, blurRadius: 10)
                          ]),
                    ),
                  );
                })),
        Padding(
          padding: const EdgeInsets.only(bottom: 50, right: 10, left: 10),
          child: Row(
            children: [
              Expanded(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text("Ayarları Kaydet",
                      style: TextStyle(color: Colors.white)),
                  onPressed: () {},
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
