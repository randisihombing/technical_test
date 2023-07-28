import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../model/product.dart';

class ProductProvider extends ChangeNotifier {
  List<Product> _products = [];

  List<Product> get products => _products;

  Future<void> fetchAllProducts() async {
    final url = 'https://mocki.io/v1/52c41978-6e31-4ea3-b917-01899e3ed373';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List<dynamic> responseData = json.decode(response.body);
      _products = responseData.map((data) => Product.fromJson(data)).toList();
      notifyListeners();
    } else {
      throw Exception('Failed to load data');
    }
  }
}
