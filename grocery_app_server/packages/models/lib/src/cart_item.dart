import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:models/src/product.dart';

class CartItem extends Equatable {
  final String id;
  final Product product;
  final int quantity;
  final double subtotal;
  const CartItem({
    required this.id,
    required this.product,
    required this.quantity,
    required this.subtotal,
  });

  CartItem copyWith({
    String? id,
    Product? product,
    int? quantity,
    double? subtotal,
  }) {
    return CartItem(
      id: id ?? this.id,
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
      subtotal: subtotal ?? this.subtotal,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'product': product.toMap(),
      'quantity': quantity,
      'subtotal': subtotal,
    };
  }

  factory CartItem.fromMap(Map<String, dynamic> map) {
    return CartItem(
      id: map['id'] as String,
      product: Product.fromMap(map['product'] as Map<String, dynamic>),
      quantity: map['quantity'] as int,
      subtotal: map['subtotal'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory CartItem.fromJson(String source) =>
      CartItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [id, product, quantity, subtotal];
}
