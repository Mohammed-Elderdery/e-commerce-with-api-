import 'package:flutter/material.dart';

class GenralCustomButton extends StatelessWidget {
  GenralCustomButton(
      {super.key,
      required this.buttonColor,
      required this.buttonText,
      this.ontap});
  final Color buttonColor;
  final String buttonText;
  void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            color: buttonColor, borderRadius: BorderRadius.circular(4)),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(color: Colors.white, fontSize: 22),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key, required this.buttonText, this.icon, this.iconColor});
  final String buttonText;
  Color? iconColor;
  IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(4)),
      child: Center(
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Icon(
                  icon,
                  color: iconColor,
                )),
            Expanded(
              flex: 3,
              child: Text(
                buttonText,
                style: const TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
