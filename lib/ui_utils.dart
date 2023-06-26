

import 'package:flutter/material.dart';

class UiUtilsScreen{
  static Future showModalBottom(BuildContext context){
    return showModalBottomSheet(context: context, builder: (context) {
      return const SizedBox(height: 30,width: 100,);
    },);
  }
}