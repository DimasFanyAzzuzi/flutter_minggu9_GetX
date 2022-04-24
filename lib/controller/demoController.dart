import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '/model/product.dart';

class DemoController extends GetxController {
  var cartItems = <Product>[].obs;
  int get cartCount => cartItems.length;
  double get totalAmount => cartItems.fold(0.0, (sum, element) => sum + element.price);
  addtoCart(Product product) {
    cartItems.add(product);
  }

  final storage = GetStorage();
  bool get isDark => storage.read('darkMode') ?? false;
  ThemeData get theme => isDark ? ThemeData.dark() : ThemeData.light();
  void changeTheme(bool val) => storage.write('darkMode', val);
}