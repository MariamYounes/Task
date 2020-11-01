import 'package:flutter/material.dart';

import '../const.dart';

AppBar appBar (){
  return AppBar(
          centerTitle: true,
          title: Text(
            "Test",
            style: TextStyle(color: Colors.white),
          ),
          elevation: 0,
          backgroundColor: Constants.skyColor(),
        );
}