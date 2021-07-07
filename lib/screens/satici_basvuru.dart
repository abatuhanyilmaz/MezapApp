import 'package:flutter/material.dart';

class SaticiBasvuru extends StatelessWidget {
  List<String> hintText = [
    "Kurumsal Ünvan",
    "Vergi Dairesi",
    "Vergi Numarası",
    "IBAN numaranız",
    "Banka Tercihi",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
                height: 50,
                color: Colors.black12,
                child: Center(
                    child: Text("Satıcı Profili Oluşturun",
                        style: TextStyle(fontWeight: FontWeight.bold)))),
            Container(
              height: 330,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 7)
                            ]),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 20),
                            border: InputBorder.none,
                            hintText: hintText[index],
                            hintStyle: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            prefixIcon:
                                Icon(Icons.star, color: Colors.red, size: 13),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black12,
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 7)
                    ]),
                child: TextFormField(
                  enabled: false,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 20),
                    border: InputBorder.none,
                    hintText: "Dosya(lar) yükleyin",
                    hintStyle:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    prefixIcon: Icon(Icons.star, color: Colors.red, size: 13),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Checkbox(value: false, onChanged: (value) {}),
                  Expanded(
                    child: Text(
                        "Satıcı Sözleşmesi, KVKK Politikası ve Mesafeli Satış Sözleşmesini Okudum, Anladım ve Onaylıyorum"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Text("Gerekli Belge ve Bilgiler",
                                style: TextStyle(color: Colors.white)),
                            onPressed: () {},
                            color: Colors.pink,
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
                            child: Text("Üyeliğinizi Tamamlayın",
                                style: TextStyle(color: Colors.green)),
                            onPressed: () {},
                            color: Colors.lightGreen,
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
      ),
    );
  }
}
