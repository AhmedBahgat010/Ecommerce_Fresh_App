import 'package:ecommerce_fresh_app/Constant/My_colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Constant/my_Style/My_Style.dart';
class SugarLevel extends StatelessWidget {
  final String sugarText;
  final bool index_container_size;
  final Function ontap;
  const SugarLevel({Key? key, required this.sugarText, required this.ontap, required this.index_container_size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        ontap();
      },
      child: Container(

        height: 100,
        width: 90,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),

        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 2),
              )
            ],
            color: index_container_size==true? pinklight:white, borderRadius: BorderRadius.circular(10)),
        child: Center(child: Text(sugarText, style: index_container_size ==
            true ? pinkContainerFont:grayContainerFont,)),
      ),
    )
    ;
  }
}
