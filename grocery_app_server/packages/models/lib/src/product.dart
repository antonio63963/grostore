// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final String categoryId;
  final double price;
  final bool isPopular;
  final bool isTrending;

  const Product(
    this.id,
    this.name,
    this.description,
    this.imageUrl,
    this.categoryId,
    this.price,
    this.isPopular,
    this.isTrending,
  );

  Product copyWith({
    String? id,
    String? name,
    String? description,
    String? imageUrl,
    String? categoryId,
    double? price,
    bool? isPopular,
    bool? isTrending,
  }) {
    return Product(
      id ?? this.id,
      name ?? this.name,
      description ?? this.description,
      imageUrl ?? this.imageUrl,
      categoryId ?? this.categoryId,
      price ?? this.price,
      isPopular ?? this.isPopular,
      isTrending ?? this.isTrending,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'imageUrl': imageUrl,
      'categoryId': categoryId,
      'price': price,
      'isPopular': isPopular,
      'isTrending': isTrending,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      map['id'] as String,
      map['name'] as String,
      map['description'] as String,
      map['imageUrl'] as String,
      map['categoryId'] as String,
      map['price'] as double,
      map['isPopular'] as bool,
      map['isTrending'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      id,
      name,
      description,
      imageUrl,
      categoryId,
      price,
      isPopular,
      isTrending,
    ];
  }
}
