import 'package:flutter/material.dart';

AppBar header(context,
    {bool isAppTitle = false, var titleText, removeBackButton = false}) {
  return AppBar(
    iconTheme: IconThemeData(
    color: Colors.black, 
  ),
    automaticallyImplyLeading: removeBackButton ? false : true,
    title: Text(
      isAppTitle ? 'Blazingram' : titleText,
      style: TextStyle(
        color: Colors.black,
        fontFamily: isAppTitle ? 'Signatra' : '',
        fontSize: isAppTitle ? 50 : 22,
        fontWeight: FontWeight.bold,
      ),
      overflow: TextOverflow.fade,
    ),
    centerTitle: true,
    backgroundColor: Colors.white70,
  );
}
