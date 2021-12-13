import 'package:flutter/material.dart';
import 'package:login_ride/utils/color.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({required this.btnText, this.onClick});
  var btnText ="";
  var onClick;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              orangeColors,
              orangeLigthColors,
            ], end: Alignment.centerLeft, begin: Alignment.centerRight),
            borderRadius: BorderRadius.all(Radius.circular(100))),
        alignment: Alignment.center,
        child: Text(
          btnText,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
