import 'package:flutter/material.dart';

class FFButtonOptions {
  final double width;
  final double height;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry iconPadding;
  final Color color;
  final TextStyle textStyle;
  final double elevation;
  final BorderSide borderSide;
  final BorderRadiusGeometry borderRadius;

  const FFButtonOptions({
    required this.width,
    required this.height,
    required this.padding,
    required this.iconPadding,
    required this.color,
    required this.textStyle,
    required this.elevation,
    required this.borderSide,
    required this.borderRadius,
  });
}

class FFButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final FFButtonOptions options;
  final Widget? icon;

  const FFButtonWidget({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.options,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: options.width,
      height: options.height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: options.padding,
          backgroundColor: options.color,
          elevation: options.elevation,
          shape: RoundedRectangleBorder(
            borderRadius: options.borderRadius,
            side: options.borderSide,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              Padding(
                padding: options.iconPadding,
                child: icon,
              ),
            Text(
              text,
              style: options.textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
