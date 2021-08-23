import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yanni_store/cards/custom_card.dart';
import 'package:yanni_store/utils/images.dart';
import 'package:get/get.dart';

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _hight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PopupMenuButton<int>(
              color: Colors.white,
              onSelected: (item) => selectedItem(
                context,
                item,
              ),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 0,
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.phoneVolume,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Contact us',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                // PopupMenuItem(
                //   value: 2,
                //   child: Row(
                //     children: [
                //       FaIcon(
                //         FontAwesomeIcons.redo,
                //         color: morrell_color,
                //       ),
                //       SizedBox(
                //         width: 12,
                //       ),
                //       Text(
                //         'Refresh',
                //         style: TextStyle(fontSize: 16),
                //       ),
                //     ],
                //   ),
                // ),
                PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.sort,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Sort',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.blueGrey,
        elevation: 4.2,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.search),
        onPressed: () {},
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.sort,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Filter",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.view_column,
                    color: Colors.black,
                  ))
            ],
          ),
          GridView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: 20,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 180,
                  mainAxisExtent: 260,
                  // childAspectRatio: 3/3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemBuilder: (context, intdex) {
                return StoreCustomCard(
                  image: acoustic_guitar_image,
                  title: 'item1',
                  price: "10",
                  category: 'uuuuu',
                );
              }),
        ],
      ),
    );
  }
}

selectedItem(
  context,
  item,
) {
  switch (item) {
    case 0:
      Get.toNamed("/ten");
      break;
    // case 2:
    //   controller.onRefresh();
    //   break;
    case 1:
      Get.defaultDialog(
          cancel: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blueGrey)),
            onPressed: () {
              Get.back();
            },
            child: Text('Cancel'),
          ),
          confirm: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blueGrey)),
            onPressed: () {
              // if (controller.formKey.currentState.validate()) {
              //   controller.addNewIp();
              //   Get.back();
              // }
            },
            child: Text('Set'),
          ),
          title: '',
          content: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: [
              // Container(
              //   height: 100,
              //   width: 250,
              //   margin: EdgeInsets.only(left: 10, right: 10),
              //   padding: EdgeInsets.only(top: 2, left: 8, right: 8),
              //   child: Form(
              //     key: controller.formKey,
              //     child: Column(
              //       children: [
              //         TextFormField(
              //           validator: controller.validate,
              //           keyboardType: TextInputType.number,
              //           controller: controller.newIp,
              //           decoration: const InputDecoration(
              //               fillColor: Color.fromRGBO(100, 33, 101, 1),
              //               labelText: 'Device IP',
              //               labelStyle: TextStyle(
              //                   fontSize: 18,
              //                   fontWeight: FontWeight.w600,
              //                   color: Color.fromRGBO(100, 33, 101, 1))),
              //           // validator: value.locationValidator,
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // Positioned(
              //     top: -100,
              //     child: CircleAvatar(
              //       backgroundColor: Colors.grey[300],
              //       radius: 45,
              //       child: SvgPicture.asset(switchIcon3),
              //     )),
            ],
          ));
  }
}
