import 'package:flutter/material.dart';
import 'package:restaurant_app/res/colors.dart';

class BaseText extends StatelessWidget {
  final String text;
  final TypographicScale typographicScale;
  final Color textColor;
  final TextAlign textAlign;
  final FontWeight fontWeight;
  final double textSize;

  const BaseText({
    Key key,
    @required this.text,
    this.typographicScale = TypographicScale.Body,
    this.textColor,
    this.textAlign,
    this.fontWeight,
    this.textSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _fontSize = 0.0;
    double _letterSpacing = 0.25;
    FontWeight _fontWeight = FontWeight.normal;

    switch (typographicScale) {
      case TypographicScale.H1:
        _fontSize = 24.0;
        _fontWeight = FontWeight.bold;
        break;
      case TypographicScale.Title:
        _fontSize = 18.0;
        _fontWeight = FontWeight.bold;
        break;
      case TypographicScale.Subtitle:
        _fontSize = 16.0;
        _fontWeight = FontWeight.bold;
        break;
      case TypographicScale.Body:
        _fontSize = 14.0;
        _letterSpacing = 0.15;
        break;
      case TypographicScale.Caption:
        _fontSize = 12.0;
        _letterSpacing = 0.0;
        break;
      case TypographicScale.Button:
        _fontSize = 14.0;
        _fontWeight = FontWeight.bold;
        _letterSpacing = 1;
        break;
      case TypographicScale.H2:
        _fontSize = 20.0;
        _fontWeight = FontWeight.bold;
        break;
    }

    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: textSize ?? _fontSize,
        fontWeight: fontWeight ?? _fontWeight,
        color: textColor ?? RestaurantColors.TEXT_PRIMARY_COLOR,
        letterSpacing: _letterSpacing,
      ),
    );
  }
}

enum TypographicScale { H1, H2, Title, Subtitle, Body, Caption, Button }