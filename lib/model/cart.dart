import 'package:ecommerce_fresh_app/model/item.dart';
import 'package:flutter/cupertino.dart';

class Cart with ChangeNotifier{
List<Item> _items=[];
double _price=0.0;
void add (Item item){
  _items.add(item);
  _price+=item.price;
  notifyListeners();
}

get count{
  return _items.length;
}
double get allPrice {
  return _price;
}

List<Item> get newOrder {

return _items;
}
}