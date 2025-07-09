import 'dart:convert';

import 'package:ecommerce_app_api_bloc/data/models/cetagories_model.dart';
import 'package:equatable/equatable.dart';

class Brand extends Equatable{
  final int id;
  final String brandName;
  final String brandImg;

  const Brand({
    required this.id,
    required this.brandName,
    required this.brandImg
});

  factory Brand.fromJson(Map<String,dynamic> json){
    return Brand(
    id: json["id"],
    brandName: json["brandName"],
    brandImg: json["brandImg"]);
  }

  @override
  List<Object?> get props => [id,brandName,brandImg];
}


class Product extends Equatable {
  final int id;
  final String title;
  final String shortDes;
  final double price;
  final double discount;
  final double discountPrice;
  final String image;
  final int stock;
  final int star;
  final String remark;
  final int categoreId;
  final int brandId;
  final Brand brand;
  final Cetagories cetagories;

  const Product({
    required this.id,
    required this.title,
    required this.shortDes,
    required this.price,
    required this.discount,
    required this.discountPrice,
    required this.image,
    required this.stock,
    required this.star,
    required this.remark,
    required this.categoreId,
    required this.brandId,
    required this.brand,
    required this.cetagories,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json["id"],
      title: json["title"],
      shortDes: json["shortDes"],
      price: (json["price"] as num).toDouble(),
      discount: (json["discount"] as num).toDouble(),
      discountPrice: (json["discountPrice"] as num).toDouble(),
      image: json["image"],
      stock: json["stock"],
      star: json["star"],
      remark: json["remark"],
      categoreId: json["cetagore_id"],
      brandId: json["brand_id"],
      brand: Brand.fromJson(json["brand"]),
      cetagories: Cetagories.fromJson(json["cetagories"]),
    );
  }

  @override
  List<Object?> get props => [
    id,
    title,
    shortDes,
    price,
    discount,
    discountPrice,
    image,
    stock,
    star,
    remark,
    categoreId,
    brandId,
    brand,
    cetagories,
  ];
}