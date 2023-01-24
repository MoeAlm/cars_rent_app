import 'package:cars_rent_app/core/components/text_components.dart';
import 'package:flutter/material.dart';
import '../base/models/cars_model.dart';

Widget buildCarItems(BuildContext context, {required Cars model}) {
  return Row(
    children: [
      Card(
        elevation: 0.5,
        color: Colors.grey[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Image.asset(
                model.img,
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width / 2.4,
                // fit: BoxFit.cover,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildText(
                    text: model.name, fontSize: 20, fontWeight: FontWeight.bold),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 64,
                ),
                buildText(
                    text: '\$ 124.0', fontSize: 20, fontWeight: FontWeight.bold),
                buildText(
                  text: 'per day',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/icon/love.png',
                    height: MediaQuery.of(context).size.height / 32,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ],
  );
}
