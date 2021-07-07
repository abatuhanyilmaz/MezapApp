import 'package:flutter/material.dart';
import 'package:mezat/styles/text_style.dart';

import 'mezat_canli_yayin.dart';

class CanliYayinGridView extends StatelessWidget {
  final List<String> items = <String>[
    "https://blog.hubspot.com/hubfs/What%20is%20Twitch%3F%20How%20do%20Brands%20use%20it%3F-1.png",
    "https://en.wideagency.com/sites/default/files/2020-10/Twitch_Norby-en-live.jpg",
    "https://static.twitchcdn.net/assets/studio-main-app_1x-5462fe68ee17ae4531d6.jpg",
    "https://static.twitchcdn.net/assets/studio-main-app_1x-5462fe68ee17ae4531d6.jpg",
    "https://en.wideagency.com/sites/default/files/2020-10/Twitch_Norby-en-live.jpg",
    "https://static.twitchcdn.net/assets/studio-main-app_1x-5462fe68ee17ae4531d6.jpg",
    "https://static.twitchcdn.net/assets/studio-main-app_1x-5462fe68ee17ae4531d6.jpg",
    "https://www.guncelkaynak.com/wp-content/uploads/2016/11/muzayede.jpg",
    "https://static.twitchcdn.net/assets/studio-main-app_1x-5462fe68ee17ae4531d6.jpg",
    "https://blog.hubspot.com/hubfs/What%20is%20Twitch%3F%20How%20do%20Brands%20use%20it%3F-1.png",
    "https://blog.hubspot.com/hubfs/What%20is%20Twitch%3F%20How%20do%20Brands%20use%20it%3F-1.png",
    "https://blog.hubspot.com/hubfs/What%20is%20Twitch%3F%20How%20do%20Brands%20use%20it%3F-1.png",
    "https://static.twitchcdn.net/assets/studio-main-app_1x-5462fe68ee17ae4531d6.jpg",
    "https://static.twitchcdn.net/assets/studio-main-app_1x-5462fe68ee17ae4531d6.jpg",
    "https://www.guncelkaynak.com/wp-content/uploads/2016/11/muzayede.jpg",
  ];

  final List<String> mezatci = <String>[
    "gitarciuye",
    "dijitaldukkan",
    "mezatcı",
    "makyajsızkalma",
    "engozdeuye",
    "organikcicekcilik",
    "gitarciuye",
    "dijitaldukkan",
    "mezatcı",
    "makyajsızkalma",
    "engozdeuye",
    "organikcicekcilik",
    "makyajsızkalma",
    "engozdeuye",
    "organikcicekcilik",
  ];
//Text(items[index])
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MezatCanliYayin()));
              },
              child: Container(
                child: Column(children: [
                  Expanded(
                      child: Column(children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(children: [
                            Container(
                              height: 20,
                              width: 70,
                              child: Row(children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.black38,
                                  size: 20,
                                ),
                                Text("1500",
                                    style: TextStyle(color: Colors.black38))
                              ]),
                              decoration: BoxDecoration(
                                  color: Colors.white60,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ]),
                          SizedBox(height: 5),
                          Row(children: [
                            Container(
                              height: 20,
                              width: 70,
                              child: Row(children: [
                                Icon(
                                  Icons.person,
                                  color: Colors.black38,
                                  size: 20,
                                ),
                                Text("150",
                                    style: TextStyle(color: Colors.black38))
                              ]),
                              decoration: BoxDecoration(
                                  color: Colors.white60,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ]),
                        ],
                      ),
                    )),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(children: [
                            Expanded(
                              child: Container(
                                height: 20,
                                width: 150,
                                child: Text(
                                  "Tüm Gitar Modellerine Uygun",
                                  style: TextStyles.drawerListTileTextStyle,
                                ),
                              ),
                            ),
                          ]),
                          Row(children: [
                            Expanded(
                              child: Container(
                                child: Text(
                                  "@${mezatci[index]}",
                                  style: TextStyles.pinkText,
                                ),
                                height: 20,
                                width: 150,
                              ),
                            ),
                          ]),
                        ],
                      ),
                    )),
                  ]))
                ]),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(items[index])),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10)),
                height: 200,
              ),
            );
          },
        ),
      ),
    );
  }
}
