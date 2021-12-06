import 'dart:convert';

import 'package:flutter/cupertino.dart';

class Product {
  String companyname;
  String productname;
  Color bgcolor;
  double price;
  String imagepath;
  Product({
    required this.companyname,
    required this.productname,
    required this.bgcolor,
    required this.price,
    required this.imagepath,
  });


  Product copyWith({
    String? companyname,
    String? productname,
    Color? bgcolor,
    double? price,
    String? imagepath,
  }) {
    return Product(
      companyname: companyname ?? this.companyname,
      productname: productname ?? this.productname,
      bgcolor: bgcolor ?? this.bgcolor,
      price: price ?? this.price,
      imagepath: imagepath ?? this.imagepath,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'companyname': companyname,
      'productname': productname,
      'bgcolor': bgcolor.value,
      'price': price,
      'imagepath': imagepath,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      companyname: map['companyname'],
      productname: map['productname'],
      bgcolor: Color(map['bgcolor']),
      price: map['price'],
      imagepath: map['imagepath'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(companyname: $companyname, productname: $productname, bgcolor: $bgcolor, price: $price, imagepath: $imagepath)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Product &&
      other.companyname == companyname &&
      other.productname == productname &&
      other.bgcolor == bgcolor &&
      other.price == price &&
      other.imagepath == imagepath;
  }

  @override
  int get hashCode {
    return companyname.hashCode ^
      productname.hashCode ^
      bgcolor.hashCode ^
      price.hashCode ^
      imagepath.hashCode;
  }
}
