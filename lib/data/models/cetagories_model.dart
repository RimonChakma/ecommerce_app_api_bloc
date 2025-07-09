import 'dart:convert';

import 'package:equatable/equatable.dart';

class Cetagories extends  Equatable{

  final int id;
  final String cetagorieName;
  final String cetagorieImg;

  const Cetagories({
    required this.id,
    required this.cetagorieName,
    required this.cetagorieImg
  });

  factory Cetagories.fromJson(Map<String,dynamic>json){
    return Cetagories(
    id: json["id"],
    cetagorieName: json["cetagoriName"],
    cetagorieImg: json["cetagorieImg"]
    );
}

  @override
  List<Object?> get props => [id,cetagorieName,cetagorieImg];
}