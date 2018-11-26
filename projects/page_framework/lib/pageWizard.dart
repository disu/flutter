import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'pageFramework.dart';

class PageWizard extends StatelessWidget with PageFramework {
  String _title = 'Wizard';
  List<String> _images;
  List<String> _texts;

  @override
  get title => this._title;

  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        Positioned.fill(
          child: Opacity(
            opacity: 0.15,
            child: Icon(
              Icons.home,
              size: 200.00,
              color: Colors.lightGreen,
            ),
          ),
        ),
      ],
    );
  }
}