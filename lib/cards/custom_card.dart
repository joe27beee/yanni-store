import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yanni_store/cards/card_model.dart';
import 'package:yanni_store/rating_star/rating_star.dart';

class CustomCard extends StatelessWidget {
  CustomCard(
      {required this.image,
      required this.title,
      required this.price,
      required this.category});
  final image;
  final String title;
  final String price;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(20)),
      elevation: 3,
      margin: EdgeInsets.only(right: 8, left: 8, bottom: 10, top: 10),
      child: Container(
        // width: 140,
        height: 160,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              fit: BoxFit.fill,
              width: 130,
              height: 160,
            ),
            // Spacer(),
            SizedBox(
              height: 10,
            ),RatingStar(),
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Text(
                category,
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Text(
                title,
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                price,
                style: TextStyle(color: Colors.grey[700], fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustemCategoryCard extends StatelessWidget {
  // const CustemCategoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Get.toNamed(data[index].routeName);
            print(data[index].title);
          },
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(20)),
            elevation: 3,
            margin: EdgeInsets.only(right: 8, left: 8, bottom: 10, top: 10),
            child:
                // height: 120,
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 18),
                  child: Text(
                    data[index].title,
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                Image.asset(
                  data[index].image,
                  fit: BoxFit.fill,
                  width: 150,
                  height: 120,
                ),
                // Spacer(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class StoreCustomCard extends StatelessWidget {
  StoreCustomCard(
      {required this.image,
      required this.title,
      required this.price,
      required this.category});
  final image;
  final String title;
  final String price;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(10)),
      elevation: 3,
      margin: EdgeInsets.only(right: 8, left: 8, bottom: 10, top: 10),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Image.asset(
              image,
              fit: BoxFit.fill,
              width: 200,
              height: 150,
            ),Spacer(),
            RatingStar(),
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Text(
                category,
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Text(
                title,
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                price,
                style: TextStyle(color: Colors.grey[700], fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
