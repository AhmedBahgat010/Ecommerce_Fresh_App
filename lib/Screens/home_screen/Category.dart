import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../Constant/My_colors/colors.dart';
import '../../model/item.dart';
import '../../model/list.dart';
import '../../widgets/menu_container.dart';
import '../View_drink_data/view_screen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  int pageIndex = 0;
  int? number_index;

  getCoffeMenu() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('coffeMenu').get();

    for (var doc in querySnapshot.docs) {
      coffeMenu.add(
        Item(
            image: doc['image'],
            // color: doc['color'],
            name: doc['name'],
            descriptionDrink: doc['descriptionDrink'],
            price: doc['price']),
      );
    }

    setState(() {});
  }

  getteaMenu() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('teaMenu').get();

    for (var doc in querySnapshot.docs) {
      teaMenu.add(
        Item(
            image: doc['image'],
            // color: doc['color'],
            name: doc['name'],
            descriptionDrink: doc['descriptionDrink'],
            price: doc['price']),
      );
    }

    setState(() {});
  }

  getcreamMenu() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('creamMenu').get();

    for (var doc in querySnapshot.docs) {
      creamMenu.add(
        Item(
            image: doc['image'],
            // color: doc['color'],
            name: doc['name'],
            descriptionDrink: doc['descriptionDrink'],
            price: doc['price']),
      );
    }

    setState(() {});
  }

  getfreezeMenu() async {
    QuerySnapshot? querySnapshot = await FirebaseFirestore.instance
        .collection('freezeMenu')
        .get();

    for (var doc in querySnapshot.docs) {
      freezeMenu.add(
        Item(
            image: doc['image'],
            // color: doc['color'],
            name: doc['name'],
            descriptionDrink: doc['descriptionDrink'],
            price: doc['price']),
      );
    }

    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCoffeMenu();
    getcreamMenu();
    getfreezeMenu();
    getteaMenu();

  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
                      color: pageIndex == 3 ? white : black,
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
            return  ConMenu(
              image: menu[pageIndex][index].image,
              name: menu[pageIndex][index].name,
              subtitle: menu[pageIndex][index].descriptionDrink,
              price: menu[pageIndex][index].price,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          Data_Drink(
                            items: menu[pageIndex][index],
                          ),
                    ));
              },
            );
          },
        ),
      ],
    );
  }
}
