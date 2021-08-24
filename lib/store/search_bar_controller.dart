import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchbarController extends GetxController {
  String searchBar = "";
  List filteredNames = [];
  Icon searchIcon = Icon(Icons.search);
  Widget appBarTitle = Text('Store');

  void searchBarChange() {
    if (searchIcon.icon == Icons.search) {
      print("s");
      searchIcon = Icon(Icons.close);
      appBarTitle = TextField(autofocus: true,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search), hintText: 'Search...'));
      update();
    } else {
      print("2");

      searchIcon = Icon(Icons.search);
      appBarTitle = Text('Store');
      update();
    }
  }
}
