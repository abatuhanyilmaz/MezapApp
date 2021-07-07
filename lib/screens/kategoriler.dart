import 'package:flutter/material.dart';

class Kategoriler extends StatelessWidget {
  final List<String> items = <String>[
    "https://cdn.tesetturpazari.com/koyu-lacivert-jean-kot-pantolon-srv1133-2-kot-pantolon-survivor-kot-pantolon-163028-23-O.jpg",
    "https://cdn.sorsware.com/bsl/ContentImages/Product/2019-yaz/13754/cepli-mini-kot-sort_mavi-mavi_5_enbuyuk.jpg",
    "https://cdn-gap.akinon.net/products/2019/04/30/130670/83e94720-da74-47ca-9608-0e907cf70a46_size520x693_cropCenter.jpg",
    "https://cdn.tesetturpazari.com/koyu-lacivert-jean-kot-pantolon-srv1133-2-kot-pantolon-survivor-kot-pantolon-163028-23-O.jpg",
    "https://cdn.sorsware.com/bsl/ContentImages/Product/2019-yaz/13754/cepli-mini-kot-sort_mavi-mavi_5_enbuyuk.jpg",
    "https://cdn-gap.akinon.net/products/2019/04/30/130670/83e94720-da74-47ca-9608-0e907cf70a46_size520x693_cropCenter.jpg",
    "https://cdn.tesetturpazari.com/koyu-lacivert-jean-kot-pantolon-srv1133-2-kot-pantolon-survivor-kot-pantolon-163028-23-O.jpg",
    "https://cdn.sorsware.com/bsl/ContentImages/Product/2019-yaz/13754/cepli-mini-kot-sort_mavi-mavi_5_enbuyuk.jpg",
    "https://cdn-gap.akinon.net/products/2019/04/30/130670/83e94720-da74-47ca-9608-0e907cf70a46_size520x693_cropCenter.jpg",
  ];

  final List<String> titile = <String>[
    "pantolon",
    "kot",
    "tshirt",
    "pantolon",
    "kot",
    "tshirt",
    "pantolon",
    "kot",
    "tshirt",
  ];
//Text(items[index])
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: 50,
              color: Colors.black12,
              child: Center(
                  child: Text("KATEGORİLER",
                      style: TextStyle(fontWeight: FontWeight.bold)))),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.8,
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Expanded(
                        child: Container(
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(items[index])),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          )),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(color: Colors.black12, blurRadius: 2)
                              ]),
                        ),
                      ),
                      Text(titile[index]),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
