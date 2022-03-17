import 'package:ecommerce_fresh_app/Constant/my_Style/My_Style.dart';
import 'package:ecommerce_fresh_app/Screens/home_screen/offer.dart';
import 'package:ecommerce_fresh_app/model/cart.dart';
import 'package:ecommerce_fresh_app/model/item.dart';
import 'package:ecommerce_fresh_app/widgets/Container/Size_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../Constant/My_colors/colors.dart';
import '../../model/list.dart';
import '../../widgets/Container/sugar_container.dart';

class ContainerStak extends StatefulWidget {
  Item items;

  ContainerStak({required this.items});

  @override
  _ContainerStakState createState() => _ContainerStakState();
}

class _ContainerStakState extends State<ContainerStak> {
  int num = 1;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(size[0]['sizeImg'].runtimeType);
    print(size[0]['sizeImg']);
    print('000000000000000000');
}
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, cart, child) {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        height: MediaQuery.of(context).size.height / 1.4,
        width: sizeFromWidth(context, 1),
        decoration: const BoxDecoration(
            color: white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60), topRight: Radius.circular(60))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.items.name, style: pinkbold),
                  Text('\$${widget.items.price} ', style: pinkbold),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Choice Size',
              style: graybold,
            ),
            const SizedBox(
              height: 22,
            ),
            SizedBox(
              height: 170,
              child: ListView.builder(
                  itemCount: size.length,
                  shrinkWrap: true,
                  //physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    print(size[index]['sizeImg']);
                    return SizeContainer(
                      imgSize: size[index]['sizeImg'],
                      ml: size[index]['ml'],
                      size: size[index]['size'],
                      index_container_size: size[index]['isSelected'],
                      ontap: () {
                        setState(() {
                          for (int i = 0; i < size.length; i++) {
                            if (size[i]['isSelected'] == true) {
                              setState(() {
                                size[i]['isSelected'] = false;
                              });
                            }
                          }
                          setState(() {
                            size[index]['isSelected'] = true;
                          });
                        });
                      },
                    );
                  }),
            ),
            const SizedBox(
              height: 22,
            ),
            Text(
              'Sugar Level',
              style: graybold,
            ),
            const SizedBox(
              height: 22,
            ),
            SizedBox(
              height: 70,
              width: sizeFromWidth(context, 1),
              child: ListView.builder(
                  itemCount: sugar.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SugarLevel(
                      sugarText: sugar[index]['size'],
                      index_container_size: sugar[index]['isSelected'],
                      ontap: () {
                        setState(() {
                          for (int i = 0; i < sugar.length; i++) {
                            if (sugar[i]['isSelected'] == true) {
                              setState(() {
                                sugar[i]['isSelected'] = false;
                              });
                            }
                          }
                          setState(() {
                            sugar[index]['isSelected'] = true;
                          });
                        });
                      },
                    );
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                      color: white,
                      border: Border.all(width: 3.0),
                      borderRadius: const BorderRadius.all(Radius.circular(
                              50.0) //                 <--- border radius here
                          ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.add, color: pink, size: 30),
                          onPressed: () {
                            setState(() {
                              ++num;
                            });
                          },
                        ),
                        Text('$num', style: grayContainerFont),
                        IconButton(
                          icon: const Icon(Icons.remove, color: pink, size: 30),
                          onPressed: () {
                            if (num > 1) {
                              setState(() {
                                --num;
                              });
                            }
                          },
                        ),
                      ],
                    )),
                InkWell(
                  onTap: () {
                    cart.add(widget.items);
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 60,
                    width: 170,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: const Offset(0, 2),
                      )
                    ], color: pink, borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: Text(
                      "Add To Cart",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          color: white),
                    )),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
