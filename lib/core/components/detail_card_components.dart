import 'package:cars_rent_app/core/components/text_components.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget buildDetailCard({required String title, required String subTitle}) {
  return Expanded(
    child: Card(
      elevation: 0.5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            buildText(text: title, fontSize: 15, color: Colors.grey),
            buildText(text: subTitle, fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold).py8()
          ],
        ),
      ),
    ).px16(),
  );
}