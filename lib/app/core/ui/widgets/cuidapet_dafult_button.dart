import 'package:cuidapet_mobile/app/core/ui/extensions/theme_extension.dart';
import 'package:flutter/material.dart';

class CuidapetDafultButton extends StatelessWidget {
  final String label;
  final VoidCallback? onpressd;
  final double borderRadius;
  final Color? color;
  final Color? labelColor;
  final double labelSize;
  final double padding;
  final double width;
  final double height;

  const CuidapetDafultButton(
      {super.key,
      required this.label,
      required this.onpressd,
      this.borderRadius = 10,
      this.color,
      this.labelColor,
      this.labelSize = 20,
      this.padding = 10,
      this.width = double.infinity,
      this.height = 66});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onpressd,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          backgroundColor: color ?? context.primaryColor,
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: labelSize,
            color: labelColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
