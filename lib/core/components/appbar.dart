import 'package:cars_rent_app/core/components/text_components.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

AppBar buildAppbar({required Function() onTap, required Function() onPressed}){
  return AppBar(
    backgroundColor: const Color.fromRGBO(34, 34, 34, 100),
    foregroundColor: Colors.white,
    leading: InkWell(
      onTap: onPressed,
      child: const CircleAvatar(
        child: Text('M'),
      ).p(6),
    ),
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildText(text: 'Good Evening', fontSize: 13),
        buildText(text: 'Mohammed', fontSize: 15, fontWeight: FontWeight.bold),
      ],
    ),
    elevation: 0.0,
    actions: [
      IconButton(onPressed: onTap, icon: Image.asset('assets/icon/menu_bar.png', color: Colors.white,))
    ],
  );
}
