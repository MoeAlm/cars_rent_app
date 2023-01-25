import 'package:cars_rent_app/core/components/text_components.dart';
import 'package:flutter/material.dart';
import '../base/models/cars_model.dart';

Widget buildCarItems(BuildContext context, {required Cars model}) {
  double width = MediaQuery.of(context).size.width;
  return Row(
    children: [
      Card(
        elevation: 0.5,
        color: Colors.grey[200],
        child: SizedBox(
          width: MediaQuery.of(context).size.width*0.9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Hero(
                  tag: model.tag,
                  child: Image.asset(
                    model.img,
                    height: MediaQuery.of(context).size.height / 6,
                    width: MediaQuery.of(context).size.width / 2.4,
                    // fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildText(
                      text: model.name, fontSize: width * 0.04, fontWeight: FontWeight.bold),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 64,
                  ),
                  buildText(
                      text: '\$ 124.0', fontSize: width * 0.05, fontWeight: FontWeight.bold),
                  buildText(
                    text: 'per day',
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.1,
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
      ),
    ],
  );
}
