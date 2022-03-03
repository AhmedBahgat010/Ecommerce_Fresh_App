import 'package:ecommerce_fresh_app/Screens/View_drink_data/view_screen.dart';
import 'package:flutter/material.dart';
import '../../Constant/My_colors/colors.dart';
import '../../model/list.dart';
import '../../widgets/menu_container.dart';
class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  int pageIndex =0;
  int? number_index ;
  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                child: Container(
                  width: 85,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: pageIndex == 0 ? pink : white,
                      boxShadow: const [
                        BoxShadow(
                          color: gray,
                          blurRadius: 7,
                        )
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ImageIcon(
                        const AssetImage('assets/images/coffee-cup1.png'),
                        size: 70,
                        color: pageIndex == 0 ? white : black,
                      ),
                      Text(
                        'Coffee',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: pageIndex == 0 ? white : gray,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                child: Container(
                  width: 85,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: pageIndex == 1 ? pink : white,
                      boxShadow: const [
                        BoxShadow(
                          color: gray,
                          blurRadius: 5,
                        )
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ImageIcon(
                        const AssetImage('assets/images/tea-cup.png'),
                        size: 65,
                        color: pageIndex == 1 ? white : black,
                      ),
                      Text(
                        'Tea',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: pageIndex == 1 ? white : gray,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                child: Container(
                  width: 85,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: pageIndex == 2 ? pink : white,
                      boxShadow: const [
                        BoxShadow(
                          color: gray,
                          blurRadius: 5,
                        )
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ImageIcon(
                        const AssetImage('assets/images/ice-cream.png'),
                        size: 65,
                        color: pageIndex == 2 ? white : black,
                      ),
                      Text(
                        'Cream',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: pageIndex == 2 ? white : gray,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                child: Container(
                  width: 85,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: pageIndex == 3 ? pink : white,
                      boxShadow: const [
                        BoxShadow(
                          color: gray,
                          blurRadius: 5,
                        )
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ImageIcon(
                        const AssetImage('assets/images/frappe.png'),
                        size: 65,
                        color: pageIndex ==3 ? white : black,
                      ),
                      Text(
                        'Freeze',
                        style: TextStyle(
                          fontSize: 18,
                          color: pageIndex == 3 ? white : gray,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(10),
            itemCount: menu[pageIndex].length,
            itemBuilder: (_, index) {
              return ConMenu(
                  image: menu[pageIndex][index][0],
                  color: menu[pageIndex][index][1],
                  name: menu[pageIndex][index][2],
                  subtitle: menu[pageIndex][index][3],
                  price: menu[pageIndex][index][4],
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)
                  => Data_Drink(menu[pageIndex][index][1],
                      menu[pageIndex][index][0])));
                },);
            },
          ),
        ],

    );
  }
}
