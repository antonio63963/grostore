// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:models/src/cart_item.dart';

class Cart extends Equatable {
  final String userId;
  final List<CartItem> cartItems;

  const Cart(
    this.userId,
    this.cartItems,
  );

  Cart copyWith({
    String? userId,
    List<CartItem>? cartItems,
  }) {
    return Cart(
      userId ?? this.userId,
      cartItems ?? this.cartItems,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userId': userId,
      'cartItems': cartItems.map((x) => x.toMap()).toList(),
    };
  }

  factory Cart.fromMap(Map<String, dynamic> map) {
    return Cart(
      map['userId'] as String,
      List<CartItem>.from(
        (map['cartItems'] as List<int>).map<CartItem>(
          (x) => CartItem.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Cart.fromJson(String source) =>
      Cart.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [userId, cartItems];

  int get totalQuantity =>
      cartItems.fold(0, (total, item) => total + item.quantity);
  double get totalPrice =>
      cartItems.fold(0, (total, item) => total + item.subtotal);
}
