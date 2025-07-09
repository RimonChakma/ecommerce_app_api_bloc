import 'dart:convert';

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