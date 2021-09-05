import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:yanni_store/accuonts/signin_controller.dart';
import 'package:yanni_store/utils/images.dart';

class CustomerSigninPage extends StatelessWidget {
  // const CustomerSigninPage({Key? key}) : super(key: key);
  final SignInController controller = Get.put(SignInController());
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Size.infinite.height,
      width: Size.infinite.width,
      child: ListView(
        children: [
          SvgPicture.asset(
            social_signin,
            width: 300,
          ),
          SizedBox(
            height: 30,
          ),
          ActionChip(
              backgroundColor: Colors.white,
              elevation: 3.0,
              padding: EdgeInsets.only(left: 10, right: 10),
              // labelPadding: EdgeInsetsGeometry.infinity,
              avatar: Image.asset(
                google_icon,
                width: 25,
              ),
              label: Text("Signin with Google"),
              onPressed: () => controller.googlelogIn()),
          ActionChip(
              backgroundColor: Colors.white,
              elevation: 3.0,
              padding: EdgeInsets.only(left: 10, right: 10),
              // labelPadding: EdgeInsetsGeometry.infinity,
              avatar: Image.asset(
                facebook_icon,
                width: 25,
              ),
              label: Text("Signin with Facebook"),
              onPressed: () {}),
          ActionChip(
              backgroundColor: Colors.white,
              elevation: 3.0,
              padding: EdgeInsets.only(left: 10, right: 10),
              // labelPadding: EdgeInsetsGeometry.infinity,
              avatar: Image.asset(
                twitter_icon,
                width: 25,
              ),
              label: Text("Signin with Twitter"),
              onPressed: () {}),
          // ElevatedButton.icon(
          //     style: ButtonStyle(
          //         backgroundColor: MaterialStateProperty.all(Colors.white)),
          //     onPressed: () {},
          //     icon: Image.asset(
          //       google_icon,
          //       width: 35,
          //     ),
          //     label: Text(
          //       "Signin with google",
          //       style: TextStyle(color: Colors.black),
          //     )),
          // RaisedButton(
          //   child: Image.asset(
          //     facebook_icon,
          //     width: 40,
          //   ),
          //   onPressed: () {},
          // ),
          // RaisedButton(
          //   child: Image.asset(
          //     twitter_icon,
          //     width: 40,
          //   ),
          //   onPressed: () {},
          // ),
        ],
      ),
    );
  }
}
