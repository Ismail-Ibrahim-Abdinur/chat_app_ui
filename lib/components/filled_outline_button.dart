import 'package:chat_ui/constants.dart';
import 'package:flutter/material.dart';

class FillOutlineButton extends StatelessWidget {
  const FillOutlineButton({
    Key? key,
    this.isFlled = true,
    required this.press,
    required this.text,
  }) : super(key: key);

  final bool isFlled;
  final VoidCallback press;
  final String text;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: isFlled ? 4 : 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: const BorderSide(color: Colors.white),
      ),
      color: isFlled ? Colors.white : Colors.transparent,
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(
          color: isFlled ? kcontentColorLightTheme : Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}
