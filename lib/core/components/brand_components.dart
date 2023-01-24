import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../base/models/brand_models.dart';

Widget brandItems(BuildContext context, {required Brands model}) {
  return Card(
    elevation: 0.5,
    color: Colors.grey[200],
    child: Container(
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width / 5,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset(
          model.img,
          height: MediaQuery.of(context).size.height / 5,
          width: MediaQuery.of(context).size.width / 5,
          fit: BoxFit.fitWidth,
        ),
      ),
    ),
  ).px8();
}
