import 'package:ecommerce_fresh_app/model/item.dart';
import 'package:flutter/cupertino.dart';
class Cart with ChangeNotifier {
  List<Item> _items = [];
  String a='';
  double _price = 0.0;
  void add(Item item) {
    if (_items.contains(item)) {

    }
    else{
      _items.add(item);
      print('item is not found');
      print('000000000000000000000000000000000000000000000000000000000000000');
    }

    _price += item.price;
    notifyListeners();
  }

  void remove(Item item) {

      _items.remove(item);

    _price += item.price;
    notifyListeners();
  }

  get count {
    return _items.length;
  }

  double get allPrice {
    return _price;
  }

  List<Item> get newOrder {
    return _items;
  }

}




