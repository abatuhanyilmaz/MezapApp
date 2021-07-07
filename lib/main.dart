import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mezat/styles/text_style.dart';

import 'screens/bildirim_ayarları.dart';
import 'screens/işlemlerim.dart';
import 'screens/kredi_yukle.dart';
import 'screens/magazaayarlari.dart';
import 'screens/magazalar.dart';
import 'screens/mesajlarim.dart';
import 'screens/mezat.dart';
import 'screens/profilim.dart';
import 'screens/raporlarim.dart';
import 'screens/satici_basvuru.dart';
import 'screens/siparislerim.dart';
import 'screens/takip_ettiklerim.dart';
import 'screens/takipcilerim.dart';
import 'screens/ürün_yönetim.dart';
import 'widgets/appbar_icon.dart';
import 'widgets/drawer_header.dart';
import 'widgets/drawer_list_tile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationDemo(),
    );
  }
}

class BottomNavigationDemo extends StatefulWidget {
  BottomNavigationDemo() : super();

  @override
  BottomNavigationDemoState createState() => BottomNavigationDemoState();
}

class BottomNavigationDemoState extends State<BottomNavigationDemo>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    _modalBottomSheetMenu();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _modalBottomSheetMenu() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await showModalBottomSheet(
          context: context,
          builder: (builder) {
            return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Saniyelik Kayıt Ömürlük Ucuzluk",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 7)
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(FontAwesomeIcons.google, size: 20),
                            SizedBox(width: 5),
                            Text("Google ile Kayıt olun"),
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 7)
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(FontAwesomeIcons.facebook, size: 20),
                            SizedBox(width: 5),
                            Text("Facebook ile Kayıt olun"),
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 7)
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(FontAwesomeIcons.phone, size: 20),
                            SizedBox(width: 5),
                            Text("Telefon ile Kayıt olun"),
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 7)
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(FontAwesomeIcons.mailBulk, size: 20),
                            SizedBox(width: 5),
                            Text("Eposta ile Kayıt olun"),
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 7)
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(FontAwesomeIcons.personBooth, size: 20),
                            SizedBox(width: 5),
                            Text("İzleyici olarak katılın"),
                          ],
                        )),
                  ),
                ]);
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Builder(
                      builder: (BuildContext context) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              AppBarIcon(
                                iconData: Icons.person,
                                function: () {
                                  Scaffold.of(context).openDrawer();
                                },
                                tooltip: MaterialLocalizations.of(context)
                                    .openAppDrawerTooltip,
                              ),
                              SizedBox(width: 4),
                              AppBarIcon(
                                  iconData: Icons.notifications,
                                  function: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                BildirimAyarlari()));
                                  }),
                              SizedBox(width: 4),
                              AppBarIcon(
                                  iconData: Icons.settings, function: () {}),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: Builder(
                      builder: (BuildContext context) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              AppBarIcon(
                                  iconData: Icons.monetization_on,
                                  function: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                KrediYukle()));
                                  }),
                              SizedBox(width: 4),
                              AppBarIcon(
                                  iconData: Icons.restore, function: () {}),
                              SizedBox(width: 4),
                              AppBarIcon(
                                  iconData: Icons.search, function: () {}),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        drawer: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.black45),
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeaderProfile(title: "Kullanıcı Adı"),
                DrawerListTile(title: "Profil Ayarları", pages: Profilm()),
                DrawerListTile(title: "Siparişlerim", pages: Siparislerim()),
                DrawerListTile(title: "Mesajlarım", pages: Mesajlarim()),
                DrawerListTile(
                    title: "Takip Ettiklerim", pages: TakipEttiklerim()),
                DrawerListTile(title: "Takipçilerim", pages: Takipcilerim()),
                DrawerListTile(
                    title: "Bildirim Ayarları", pages: BildirimAyarlari()),
                DrawerListTile(
                    title: "Mağaza Ayarları", pages: MagazaAyarlari()),
                DrawerListTile(title: "Ürün Yönetimi", pages: UrunYonetim()),
                DrawerListTile(title: "Satıcı Başvuru", pages: SaticiBasvuru()),
                DrawerListTile(title: "Raporlarım", pages: Raporlarim()),
                DrawerListTile(title: "Güvenli Çıkış", pages: null),
              ],
            ),
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: <Widget>[
            Mezat(),
            Mesajlarim(),
            Islemlerim(),
            Magazalar(),
          ],
        ),
        bottomNavigationBar: TabBar(
          labelStyle: TextStyle(color: Colors.black),
          controller: controller,
          isScrollable: false,
          labelColor: Colors.red,
          indicatorColor: Colors.transparent,
          unselectedLabelColor: Colors.black26,
          unselectedLabelStyle: TextStyle(color: Colors.red),
          tabs: <Widget>[
            Tab(
                icon: Icon(Icons.live_tv),
                child: Text("Canlı", style: TextStyles.tabTextStyle)),
            Tab(
                icon: Icon(Icons.chat),
                child: Text("Mesajlar", style: TextStyles.tabTextStyle)),
            Tab(
                icon: Icon(Icons.assignment_sharp),
                child: Text("İşlemlerim", style: TextStyles.tabTextStyle)),
            Tab(
                icon: Icon(Icons.store),
                child: Text("Mağazalar", style: TextStyles.tabTextStyle)),
          ],
        ),
      ),
    );
  }
}
