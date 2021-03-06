import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Constant/My_colors/colors.dart';

class ConMenu extends StatelessWidget {
  String image;
  String name;
  String subtitle;
  num price;
//  String color;
   Function onTap;

  ConMenu({Key? key,
    required this.image,
    required this.name,
    required this.subtitle,
    required this.price,
    // required this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        margin: const EdgeInsets.all(2),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: red,
                  image: DecorationImage(image:NetworkImage(image))
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.w500, height: 1.5),
                  ),
                  Text(subtitle,
                      style: const TextStyle(fontSize: 16, height: 1.5, color: gray)),
                  Text('\$$price ', style: const TextStyle(fontSize: 18,
                      height: 1.5,
                      color: pink,
                      fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}
