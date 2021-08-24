import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yanni_store/categories/Tambourine.dart';
import 'package:yanni_store/categories/acoustic_guitar.dart';
import 'package:yanni_store/categories/classic_guitar.dart';
import 'package:yanni_store/categories/electric_guitar.dart';
import 'package:yanni_store/categories/trumpet.dart';
import 'package:yanni_store/main/main_page.dart';
import 'package:yanni_store/splash_screen/splash_screen.dart';
import 'categories/banjo.dart';
import 'categories/cello.dart';
import 'categories/clarinet.dart';
import 'categories/drums.dart';
import 'categories/harmonica.dart';
import 'categories/milodica.dart';
import 'categories/organ.dart';
import 'categories/oud.dart';
import 'categories/saxophone.dart';
import 'categories/violin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(themeMode: ThemeMode.dark,
        darkTheme: ThemeData.dark(),
        theme: ThemeData.light(),
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
        getPages: [
          GetPage(name: "/one", page: () => AcousticGuitarPage()),
          GetPage(name: "/two", page: () => ClassicGuitarPage()),
          GetPage(name: "/three", page: () => ElectricGuitarPage()),
          GetPage(name: "/four", page: () => DrumsPage()),
          GetPage(name: "/fife", page: () => BanjoPage()),
          GetPage(name: "/six", page: () => CelloPage()),
          GetPage(name: "/seven", page: () => ClarinetPage()),
          GetPage(name: "/eight", page: () => ViolinPage()),
          GetPage(name: "/nine", page: () => HarmonicaPage()),
          GetPage(name: "/ten", page: () => MilodicaPage()),
          GetPage(name: "/eleven", page: () => OudPage()),
          GetPage(name: "/twelve", page: () => SaxophonePage()),
          GetPage(name: "/treeteen", page: () => OrganPage()),
          GetPage(name: "/fourteen", page: () => TambourinePage()),
          GetPage(name: "/fifteen", page: () => TrumpetPage())
        ]);
  }
}
