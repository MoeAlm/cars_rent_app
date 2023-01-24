import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 4,
                  child: CircleAvatar(
                    child: Text(
                      'M',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Positioned(
                    right: 10.0,
                    left: 2.0,
                    bottom: 40.0,
                    top: 100.0,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black87,
                          radius: 15,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.mode_edit_outline_outlined,
                              color: Colors.white,
                              size: MediaQuery.of(context).size.height/46,
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
          Column(
            children: [
              Text('Mohammed Almazouzi', style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
            ],
          )
        ],
      ),
    );
  }
}
