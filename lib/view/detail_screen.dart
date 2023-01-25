import 'package:cars_rent_app/core/base/models/cars_model.dart';
import 'package:cars_rent_app/core/components/text_components.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/components/detail_card_components.dart';

class DetailScreen extends StatelessWidget {
  final Cars model;

  const DetailScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: height / 2.5,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.vertical(bottom: Radius.circular(30)),
                    color: Colors.grey[300],
                  ),
                  child: Stack(
                    children: [
                      Hero(
                        tag: model.tag,
                        child: Image.asset(
                          model.img,
                          height: height / 2,
                          width: width,
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    buildText(
                        text: model.name,
                        fontSize: width * 0.07,
                        fontWeight: FontWeight.bold),
                  ],
                ).p16()
              ],
            ),
            buildText(text: 'Renter', fontSize: width * 0.07, fontWeight: FontWeight.bold)
                .px16().py8(),
            Row(
              children: [
                const CircleAvatar(
                  child: Text('U'),
                ),
                buildText(text: 'User', fontSize: width * 0.06, color: Colors.grey).px(8),
                SizedBox(
                  width: width / 2.7,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.message_rounded, size: width *0.075,)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.phone, size: width *0.075,)),
                  ],
                )
              ],
            ).px16(),
            SizedBox(
              height: height/32,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildDetailCard(title: 'Transition', subTitle: 'Automatic'),
                buildDetailCard(
                    title: 'Acceleration', subTitle: '14s 0-150 km/h'),
              ],
            ),
            SizedBox(
              height: height/20,
            ),
            Row(
              children: [
                buildText(text: '124\$', fontSize: width * 0.09, fontWeight: FontWeight.bold),
                Expanded(child: buildText(text: ' / Day', fontSize: width* 0.05, color: Colors.grey)),
                Expanded(
                  flex: 3,
                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container();
                          });
                    },
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white),
                    child: Text('Book Now', style: TextStyle(fontSize: width * 0.045),),
                  ),
                ),
              ],
            ).p16(),
          ],
        ),
      ),
    );
  }
}
