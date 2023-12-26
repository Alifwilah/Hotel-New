import 'package:flutter/cupertino.dart' show Border, BorderRadius, BoxDecoration, BuildContext, Center, Color, Container, Icon, IconData, Key, StatelessWidget, Widget;
import 'app_text.dart';

//import '../misc/colors.dart';

// ignore: must_be_immutable
class AppButtons extends StatelessWidget {
  final Color color;
  String? text="hi";
  IconData? icon;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  bool? isIcon;

  AppButtons({Key? key,
    this.isIcon=false,
    this.text,
    this.icon,
    required this.size,
    required this.color,
    required this.backgroundColor,
    required this.borderColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor),
      child: isIcon==false?Center(child: AppText(text: text!, color:color)):Center(child: Icon(icon, color: color,)),
    );
  }
}
