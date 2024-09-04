import 'package:flutter/material.dart';

class FlutterFlowIconButton extends StatelessWidget {
  final double borderRadius;
  final double buttonSize;
  final Color borderColor;
  final Color fillColor;
  final Icon icon;
  final VoidCallback onPressed;

  const FlutterFlowIconButton({
    Key? key,
    required this.borderRadius,
    this.buttonSize = 50.0,
    required this.borderColor,
    required this.fillColor,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        decoration: BoxDecoration(
          color: fillColor,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: borderColor, width: 2),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(borderRadius),
          onTap: onPressed,
          child: Container(
            width: buttonSize,
            height: buttonSize,
            alignment: Alignment.center,
            child: icon,
          ),
        ),
      ),
    );
  }
}
