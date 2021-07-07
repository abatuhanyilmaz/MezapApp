import 'package:flutter/material.dart';

class MagazlarGridView extends StatelessWidget {
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
      body: Column(
        children: [
          Container(
              height: 50,
              color: Colors.black12,
              child: Center(
                  child: Text("SATICILAR / MAĞAZALAR",
                      style: TextStyle(fontWeight: FontWeight.bold)))),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.9,
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            CircleAvatar(
                              foregroundColor: Colors.black12,
                              radius: 55,
                              backgroundColor: Colors.white,
                              child: Center(
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundImage: NetworkImage(items[index]),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(mezatci[index],
                          style: TextStyle(fontWeight: FontWeight.bold)),
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
