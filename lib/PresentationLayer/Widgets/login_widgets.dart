import 'package:flutter/material.dart';

import '../../Constants/font_styles.dart';

class LoginWidgets extends StatelessWidget {
  const LoginWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text(""),
    );
  }
}

class BottomCircle extends StatelessWidget {
  final String text;
  final Color circleColor;
  final Color textColor;
  final double fontSize;

  const BottomCircle({
    Key? key,
    required this.text,
    required this.circleColor,
    required this.textColor,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          color: circleColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(200), topRight: Radius.circular(200))),
      child: Center(
        child: Text(text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String text1;
  final Color buttonColor;
  final Color textColor;
  final bool loading;
  final String loadingText;
  const Button({
    Key? key,
    required this.text1,
    required this.buttonColor,
    required this.textColor,
    required this.loading,
    required this.loadingText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: buttonColor.withAlpha(50),
                blurRadius: 2.0,
                offset: const Offset(0.0, 2.0))
          ],
          borderRadius: BorderRadius.circular(10),
          color: buttonColor,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (loading)
                  const CircularProgressIndicator(
                    color: Colors.white,
                  ),
                if (loading)
                  const SizedBox(
                    width: 10,
                  ),
                Text(
                  loadingText != "" ? loadingText : text1,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
