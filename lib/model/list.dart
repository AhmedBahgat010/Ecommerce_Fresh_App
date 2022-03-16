
import 'package:ecommerce_fresh_app/main.dart';
import 'package:ecommerce_fresh_app/model/item.dart';



 List<List<Item>> menu = [coffeMenu, teaMenu, creamMenu, freezeMenu];
List<Item> coffeMenu = <Item>[];
List<Item> teaMenu = <Item>[];
List<Item> creamMenu = <Item>[];
List<Item> freezeMenu = <Item>[];


List<Map<String, dynamic>> sugar = [
  {
    'size': '0%',
    'isSelected': false,
  },
  {
    'size': '25%',
    'isSelected': false,
  },
  {
    'size': '50%',
    'isSelected': false,
  },
  {
    'size': '100%',
    'isSelected': false,
  }
];
List<Map<String, dynamic>> size = [
  {
    'size': 'Small',
    'ml': '125 ml',
    'sizeImg': 50.05,
    'isSelected': false,
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
    'sizeImg': 100.50,
    'isSelected': false,
  },
];


//
// List<Item> coffeMenu = [
//   Item(
//       image: 'coffee.png',
//       color: purple,
//       name: 'Black Coffee',
//       descriptionDrink: 'Really tasty black coffee',
//       price: 11.5),
//   Item(
//       image: 'cappuccino.png',
//       color: beige,
//       name: 'Cappuccino',
//       descriptionDrink: 'Single espresso shot and hot',
//       price: 9.0),
//   Item(
//       image: 'coffecup.png',
//       color: lightBlue,
//       name: 'Coffee Cup',
//       descriptionDrink: 'Sweet hot coffee',
//       price: 13.5),
// ];
// List<Item> teaMenu = [
//   Item(
//       image: 'tea.png',
//       color: pinkClear,
//       name: 'orginal tea',
//       descriptionDrink: 'Really great taste tea',
//       price: 7.5),
//   Item(
//       image: 'teamint.png',
//       color: green,
//       name: 'Tea with mint',
//       descriptionDrink: 'Really great for relaxation',
//       price: 9.0),
//   Item(
//       image: 'teapuples.png',
//       color: red,
//       name: 'Strawberry',
//       descriptionDrink: 'Really great for refreshing',
//       price: 10.0),
// ];
//
// List<Item> creamMenu = [
//   Item(
//       image: 'pineapple.png',
//       color: orange,
//       name: 'Aloha Pineapple',
//       descriptionDrink: 'pineapple sherbet strawberries',
//       price: 10.5),
//   Item(
//       image: 'gelato.png',
//       color: lightPurple,
//       name: 'Gelato',
//       descriptionDrink: 'Gelato choco ice cream',
//       price: 9.5),
//   Item(
//       image: 'chocalte.png',
//       color: darkPpurple,
//       name: 'Almond Chocolate',
//       descriptionDrink: 'Almond delicious ice cream',
//       price: 11.0)
// ];
// List<Item> freezeMenu = [
//   Item(
//       image: 'orange.png',
//       color: pinkClear,
//       name: 'orange juice',
//       descriptionDrink: 'Really great taste orange juice',
//       price: 8.0),
//   Item(
//       image: 'greenjuice.png',
//       color: green,
//       name: 'Lavender Milk',
//       descriptionDrink: 'Really great as ice tea',
//       price: 6.5),
//   Item(
//       image: 'strawberry.png',
//       color: red,
//       name: 'Strawberry',
//       descriptionDrink: 'Fresh fruit juice that if full of',
//       price: 7.5),
// ];
//
