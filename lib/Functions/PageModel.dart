import 'package:flutter/material.dart';
class PageModel {
  String _image ;
  IconData _Icon ;
  String _title ;
  String _text ;

  PageModel(this._image, this._Icon, this._title, this._text);

  String get text => _text;

  String get title => _title;

  IconData get Icon => _Icon;

  String get image => _image;

}