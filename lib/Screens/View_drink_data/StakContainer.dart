import 'package:ecommerce_fresh_app/Constant/my_Style/My_Style.dart';
import 'package:ecommerce_fresh_app/Screens/home_screen/offer.dart';
import 'package:ecommerce_fresh_app/widgets/Container/Size_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constant/My_colors/colors.dart';

class ContainerStak extends StatefulWidget {
  const ContainerStak({Key? key}) : super(key: key);

  @override
  _ContainerStakState createState() => _ContainerStakState();
}

class _ContainerStakState extends State<ContainerStak> {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: MediaQuery.of(context).size.height/1.4,
      width: sizeFromWidth(context, 1),
      decoration: const BoxDecoration(
          color: white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60), topRight: Radius.circular(60))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Tea with mint', style: pinkbold),
                Text('\$7.5', style: pinkbold),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Choice Size',
              style: graybold,
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 170,
              child: ListView.builder(
                  itemCount: size.length,
                  shrinkWrap: true,
                  //physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
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
            )
          ],
        ),
      ),
    );
  }
}
List <Map<String, dynamic>> size =[
  {
    'size': 'Small',
    'ml': '125 ml',
    'sizeImg': 50.05,
    'isSelected' : false,
  },
  {
    'size': 'Medium',
    'ml': '250 ml',
    'sizeImg': 80.50,
    'isSelected': false,

  },
  {
    'size': 'Large',
    'ml': '500 ml',
    'sizeImg':100.50,
    'isSelected': false,

  },
];
