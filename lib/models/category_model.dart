import 'package:flutter/material.dart';

class Category {
  final String id;
  final String name;
  final String iconCode;
  final bool isPredefined;

  Category({
    required this.id,
    required this.name,
    required this.iconCode,
    this.isPredefined = false,
  });

  IconData get icon {
    return IconData(
      int.parse(iconCode, radix: 16),
      fontFamily: 'MaterialIcons',
    );
  }

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'] as String,
      name: json['name'] as String,
      iconCode: json['iconCode'] as String,
      isPredefined: json['isPredefined'] as bool,
    );
  }
}
