import 'package:cloud_firestore/cloud_firestore.dart';

class Abaya {
  final String id;
  final String name;
  final String nameEn;
  final String description;
  final String descriptionEn;
  final double price;
  final String image;
  final List<String> images;
  final List<String> sizes;
  final List<String> colors;
  final String category;
  final double rating;
  final int reviewsCount;
  final DateTime createdAt;

  Abaya({
    required this.id,
    required this.name,
    required this.nameEn,
    required this.description,
    required this.descriptionEn,
    required this.price,
    required this.image,
    required this.images,
    required this.sizes,
    required this.colors,
    required this.category,
    required this.rating,
    required this.reviewsCount,
    required this.createdAt,
  });

  factory Abaya.fromMap(Map<String, dynamic> map) {
    return Abaya(
      id: map['id'] as String,
      name: map['name'] as String,
      nameEn: map['name_en'] as String,
      description: map['description'] as String,
      descriptionEn: map['description_en'] as String,
      price: (map['price'] as num).toDouble(),
      image: map['image'] as String,
      images: List<String>.from(map['images'] as List),
      sizes: List<String>.from(map['sizes'] as List),
      colors: List<String>.from(map['colors'] as List),
      category: map['category'] as String,
      rating: (map['rating'] as num).toDouble(),
      reviewsCount: map['reviews_count'] as int,
      createdAt: (map['created_at'] as Timestamp).toDate(),
    );
  }
}
