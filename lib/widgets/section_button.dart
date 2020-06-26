import 'package:flutter/material.dart';

class SectionButton extends StatelessWidget {
  SectionButton({this.image, this.child, this.sectionName, this.onTap});

  final Widget child;
  final String sectionName;
  final AssetImage image;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: child,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: this.image,
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.8), BlendMode.dstATop),
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
