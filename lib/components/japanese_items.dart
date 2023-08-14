import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors
// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category(
      {super.key, this.color,
      this.text1,
      this.text2,
      this.text3,
      this.ontap,
      this.onDoubleTap});
  String? text1;
  String? text2;
  String? text3;
  Color? color;
  Function()? ontap;
  Function()? onDoubleTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: onDoubleTap,
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.only(
          left: 24,
        ),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 70,
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text1!,
              textAlign: TextAlign.center,
              maxLines: 1,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Text(
              text2!,
              textAlign: TextAlign.center,
              maxLines: 1,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Text(
              text3!,
              textAlign: TextAlign.center,
              maxLines: 1,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class AppBarOfScreens extends StatelessWidget {
//   AppBarOfScreens({this.textbar,});
//   String? textbar;
 
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Color(0xff47312B),
//       centerTitle: false,
//       title: Text(
//         textbar!,
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 20,
//         ),
//       ),
//     );
//   }
// }
