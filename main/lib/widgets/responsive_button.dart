import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main/misc/colors.dart';
import 'package:main/widgets/app_text.dart';

// ignore: must_be_immutable
class ResponsiveButton extends StatelessWidget {
  bool? isReponsive;
  double? width;
  ResponsiveButton({Key? key, this.width=120, this.isReponsive=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isReponsive==true?double.maxFinite:width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor
        ),
        child: Row(
          mainAxisAlignment: isReponsive==true?MainAxisAlignment.spaceBetween:MainAxisAlignment.center,
          children: [
            isReponsive==true?Container(
                margin: const EdgeInsets.only(left: 20),
                child: AppText(text: "Book Trip Now", color: Colors.white,)):Container(),
            Image.asset("image/button-one.png"),
          ],
        ),
      ),
    );
  }
}
