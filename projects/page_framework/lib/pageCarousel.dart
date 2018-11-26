import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'pageFramework.dart';

class PageCarousel extends StatelessWidget with PageFramework {
  String _title = 'Wizard';
  List<String> _images;

  @override
  get title => this._title;

  PageCarousel(this._images);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Carousel(
      /*images: [
          new ExactAssetImage('images/wizard1.jpg'),
          new ExactAssetImage('images/wizard2.jpg'),
          new ExactAssetImage('images/wizard3.jpg'),
        ],*/
        images:
          this._images.map((String url) {
            return new ExactAssetImage('images/' + url);
          }).toList()
        ,
        autoplay: false,
      ),
    );
  }
}