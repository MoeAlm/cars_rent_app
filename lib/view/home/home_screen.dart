import 'package:cars_rent_app/core/base/models/brand_models.dart';
import 'package:cars_rent_app/core/components/text_components.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../core/base/models/cars_model.dart';
import '../../core/components/appbar.dart';
import '../../core/components/brand_components.dart';
import '../../core/components/cars_components.dart';
import '../detail_screen.dart';
import '../profile_screen.dart';

class MyHomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double? height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List<Brands> brandList = [
      Brands(img: 'assets/image/logos/1.png'),
      Brands(img: 'assets/image/logos/2.png'),
      Brands(img: 'assets/image/logos/3.png'),
      Brands(img: 'assets/image/logos/4.png'),
      Brands(img: 'assets/image/logos/5.png'),
    ];
    List<Cars> carsList = [
      Cars(img: 'assets/image/cars/1.png', name: 'Toyota', tag: 'Toyota'),
      Cars(
        img: 'assets/image/cars/2.png',
        name: 'Hyundai',
        tag: 'Hyundai',
      ),
      Cars(
        img: 'assets/image/cars/3.png',
        name: 'Toyota',
        tag: 'Toyota1',
      ),
      Cars(
        img: 'assets/image/cars/4.png',
        name: 'Audi',
        tag: 'Audi',
      ),
      Cars(img: 'assets/image/cars/5.png', name: 'Tesla', tag: 'Tesla'),
      Cars(img: 'assets/image/cars/6.png', name: 'KIA', tag: 'KIA'),
    ];
    return Scaffold(
      key: _key,
      appBar: buildAppbar(onTap: () {
        _key.currentState!.openEndDrawer();
      }, onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const ProfileScreen();
        }));
      }),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height / 4,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(34, 34, 34, 100),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  TextField(
                    // style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.all(14),
                      prefixIcon: IconButton(
                          onPressed: () {}, icon: Icon(Icons.search)),
                      hintText: 'Search',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: width / 2,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.black45,
                        elevation: 0,
                      ),
                      child: buildText(text: 'Show Offers', fontSize: 17),
                    ),
                  )
                ],
              ).p(15),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildText(
                    text: 'Brands', fontSize: 30, fontWeight: FontWeight.bold),
                SizedBox(
                  height: height / 10,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: brandList.length,
                      itemBuilder: (context, index) {
                        return brandItems(context, model: brandList[index]);
                      }),
                ),
                buildText(
                    text: 'Available Cars', fontSize: 25, fontWeight: FontWeight.bold),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  // scrollDirection: Axis.horizontal,
                  itemCount: carsList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailScreen(
                              model: carsList[index],
                            );
                          }));
                        },
                        child: buildCarItems(context, model: carsList[index]));
                  },
                ),
              ],
            ).p16(),
          ],
        ),
      ),
      endDrawer: Drawer(),
    );
  }
}
