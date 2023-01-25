import 'package:cars_rent_app/core/components/text_components.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: height / 2,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
                    color: Colors.grey[300],
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/image/cars/1.png',
                        height: height / 2,
                        width: width,
                      )
                    ],
                  ),
                ),
                Column(
                    children: [
                      buildText(text: 'Toyota', fontSize: 25, fontWeight: FontWeight.bold),
                    ],
                ).p16()
              ],
            ),
            buildText(text: 'Renter', fontSize: 25, fontWeight: FontWeight.bold).p16(),
            Row(
              children: [
                const CircleAvatar(child: Text('U'),),
                buildText(text: 'UserName', fontSize: 20, color: Colors.grey).px(8),
                SizedBox(
                  width: width/4.2,
                ),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.message_rounded)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.phone)),
                  ],
                )
              ],
            ).px16(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          buildText(text: 'Transition', fontSize: 15, color: Colors.grey),
                          buildText(text: 'Automatic', fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold)
                        ],
                      ),
                    ),
                  ).px16(),
                ),
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          buildText(text: 'Acceleration', fontSize: 15, color: Colors.grey),
                          buildText(text: '4.2s 0-150 km/h', fontSize: 15, color: Colors.black)
                        ],
                      ),
                    ),
                  ).px16(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
