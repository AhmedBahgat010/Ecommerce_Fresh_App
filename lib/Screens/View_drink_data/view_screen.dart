// ignore_for_file: camel_case_types

import 'package:ecommerce_fresh_app/Constant/my_Style/My_Style.dart';
import 'package:flutter/material.dart';

import '../../Constant/My_colors/colors.dart';
import 'StakContainer.dart';

class Data_Drink extends StatefulWidget {
  final Color colorContainer;
  final String image;

  Data_Drink(this.colorContainer, this.image);

  @override
  _Data_DrinkState createState() => _Data_DrinkState();
}

class _Data_DrinkState extends State<Data_Drink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              //alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                          image: AssetImage('assets/images/' + widget.image),
                          alignment: Alignment.center,
                          scale: 8.0 ,
                         )),
                ),
                const Align(
                    alignment: Alignment.bottomCenter, child: ContainerStak()),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
