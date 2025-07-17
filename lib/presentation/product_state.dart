import 'package:equatable/equatable.dart';

import '../data/models/cetagories_model.dart';
import '../data/models/product_model.dart';

abstract class ProductState extends Equatable{
  const ProductState();
  @override
  List<Object?> get props => [];
}

class ProductInitial extends ProductState{}
class ProductLoading extends ProductState{}

class ProductError extends ProductState{
  final String message;
  const ProductError(this.message);
  @override
  List<Object?> get props => [message];
}

class CategoryLoaded extends ProductState{
  final List<Category> category;
  const CategoryLoaded(this.category);
  @override
  List<Object?> get props => [category];
}

class PopularProduct extends ProductState{
  final List<Product> product;
  const PopularProduct(this.product);
  @override
  List<Object?> get props => [product];a
}