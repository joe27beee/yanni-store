import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yanni_store/accuonts/accuont_page.dart';
import 'package:yanni_store/categories/category_page.dart';
import 'package:yanni_store/home/home_page.dart';
import 'package:yanni_store/store/store_page.dart';
import 'nav_controller.dart';

class MainPage extends StatelessWidget {
  final BottonNav navController = Get.put(BottonNav());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottonNav>(
      builder: (controller) {
        return Scaffold(
          // floatingActionButton: FloatingActionButton(
          //   backgroundColor: Colors.blueGrey,
          //   child: Icon(Icons.search),
          //   onPressed: () {},
          // ),
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomePage(),
                StorePage(),
                CategoryPage(),
                AccuontPage()
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: controller.onTab,
            currentIndex: controller.tabIndex,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Colors.blueGrey,
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: 'Store',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                label: 'categories',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Account',
              ),
            ],
          ),
        );
      },
    );
  }
}
