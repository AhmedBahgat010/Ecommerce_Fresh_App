import 'package:ecommerce_fresh_app/Constant/my_Style/My_Style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Constant/My_colors/colors.dart';

class ContainerNeworder extends StatelessWidget {
  String image;
  String name;
  String subtitle;
  num price;
  Function onPressed;

  // Color color;

  ContainerNeworder(
      {Key? key,
      required this.image,
      required this.name,
      required this.subtitle,
      required this.price,
      required this.onPressed
      // required this.color,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: red,
                image: DecorationImage(image: NetworkImage(image))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w500, height: 1.5),
                ),
                Text(subtitle,
                    style: const TextStyle(
                        fontSize: 16, height: 1.5, color: gray)),
                Text('\$ $price',
                    style: const TextStyle(
                        fontSize: 20,
                        height: 1.5,
                        color: pink,
                        fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          SizedBox(
            width: 50,
            height: 100,
            child: IconButton(
              onPressed: () {
                onPressed();
              },
              icon: Icon(Icons.delete, size: 45),
              color: pink,
            ),
          )
        ],
      ),
    );
  }
}
