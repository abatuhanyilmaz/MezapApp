import 'package:flutter/material.dart';

class MezatCanliYayin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(children: [
            Expanded(
                child: Container(
              child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Container(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 10),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 52,
                                      backgroundColor: Colors.white,
                                      child: Center(
                                        child: CircleAvatar(
                                          radius: 50,
                                          backgroundColor: Colors.amber,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    buildContainer(),
                                    SizedBox(height: 5),
                                    Container(
                                      padding:
                                          EdgeInsets.only(left: 5, right: 5),
                                      height: 20,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black54,
                                      ),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.white,
                                              size: 15,
                                            ),
                                            SizedBox(width: 5),
                                            Text("1200",
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Container(
                                        padding:
                                            EdgeInsets.only(left: 5, right: 5),
                                        height: 20,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.black54,
                                        ),
                                        child: Center(
                                            child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.person,
                                              color: Colors.white,
                                              size: 15,
                                            ),
                                            SizedBox(width: 5),
                                            Text("1200",
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ],
                                        ))),
                                    SizedBox(height: 5),
                                    Container(
                                      padding:
                                          EdgeInsets.only(left: 5, right: 5),
                                      height: 20,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.red,
                                      ),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.live_tv,
                                              color: Colors.white,
                                              size: 15,
                                            ),
                                            SizedBox(width: 5),
                                            Text("Canlı",
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 20, left: 10, right: 10),
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black38,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          contentPadding:
                                              EdgeInsets.only(left: 10),
                                          hintText: "Bir mesaj gönderin..",
                                          hintStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15)),
                                    )),
                              ),
                            ]),
                      )),
                  Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                  child: Center(
                                      child: Icon(Icons.close,
                                          color: Colors.white)),
                                  backgroundColor: Colors.black54,
                                  radius: 25),
                              Container(
                                height: 370,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black54,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                children: [
                                                  Text("Sıkma Kehribar\nTesbih",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ],
                                              ),
                                              Container(
                                                height: 20,
                                                child: OutlineButton(
                                                    borderSide: BorderSide(
                                                        color: Colors.white),
                                                    child: Text("Ürünü İncele",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 13)),
                                                    color: Colors.white,
                                                    onPressed: () {}),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 20,
                                                child: OutlineButton(
                                                    borderSide: BorderSide(
                                                        color: Colors.white),
                                                    child: Text("Şu Anki Fiyat",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 13)),
                                                    color: Colors.white,
                                                    onPressed: () {}),
                                              ),
                                              SizedBox(height: 5),
                                              Row(
                                                children: [
                                                  Text("150 TL",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color: Colors.amber,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ],
                                              ),
                                              SizedBox(height: 5),
                                              Row(
                                                children: [
                                                  Text(
                                                      "son teklif\nfırsat üyesi",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 13,
                                                      )),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 20,
                                                child: OutlineButton(
                                                    borderSide: BorderSide(
                                                        color: Colors.white),
                                                    child: Text("Pay Artışı",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 13)),
                                                    color: Colors.white,
                                                    onPressed: () {}),
                                              ),
                                              SizedBox(height: 5),
                                              Row(
                                                children: [
                                                  Text("10 TL",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color: Colors
                                                              .lightGreenAccent,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ],
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                height: 20,
                                                child: RaisedButton(
                                                    color:
                                                        Colors.lightGreenAccent,
                                                    onPressed: () {},
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .thumb_up_alt_outlined,
                                                            size: 15,
                                                            color:
                                                                Colors.white),
                                                        SizedBox(width: 5),
                                                        Text("Arttır",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white)),
                                                      ],
                                                    )),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                height: 20,
                                                child: RaisedButton(
                                                    color: Colors.pink,
                                                    onPressed: () {},
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .thumb_up_alt_outlined,
                                                            size: 15,
                                                            color:
                                                                Colors.white),
                                                        SizedBox(width: 5),
                                                        Text("Aldım",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white)),
                                                      ],
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 25),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                        child: Center(
                                            child: Icon(Icons.send,
                                                color: Colors.white)),
                                        backgroundColor: Colors.black54,
                                        radius: 20),
                                    CircleAvatar(
                                        child: Center(
                                            child: Icon(Icons.group_add,
                                                color: Colors.white)),
                                        backgroundColor: Colors.pink,
                                        radius: 20),
                                    CircleAvatar(
                                        child: Center(
                                            child: Icon(Icons.message,
                                                color: Colors.white)),
                                        backgroundColor: Colors.black54,
                                        radius: 20),
                                  ],
                                ),
                              ),
                            ]),
                      )),
                ],
              ),
            ))
          ]),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://www.guncelkaynak.com/wp-content/uploads/2016/11/muzayede.jpg"))),
        ),
      ),
    );
  }

  Container buildContainer() {
    return Container(
        padding: EdgeInsets.only(left: 5, right: 5),
        height: 20,
        width: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black54,
        ),
        child: Center(
            child: Text("Mezatcı", style: TextStyle(color: Colors.white))));
  }
}
