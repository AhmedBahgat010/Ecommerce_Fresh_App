// ignore_for_file: camel_case_types

import 'package:ecommerce_fresh_app/Constant/my_Style/My_Style.dart';
import 'package:ecommerce_fresh_app/model/item.dart';
import 'package:flutter/material.dart';

import '../../Constant/My_colors/colors.dart';
import 'StakContainer.dart';

class Data_Drink extends StatefulWidget {

    Item items;

  Data_Drink({required this.items});

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
                    color: pink,
                    image: DecorationImage(
                      // fit:BoxFit.fill ,
                        image: NetworkImage(widget.items.image),
                        alignment: Alignment.center,
                       scale: 6.0,
                       )),
              ),
               Align(
                  alignment: Alignment.bottomCenter, child: ContainerStak(items: widget.items,)),
            ],
          ),
        ),
          ],
        ),
      ),
    );
  }
}
