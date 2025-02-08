import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import '../lib/firebase_options.dart';

final List<Map<String, dynamic>> abayaData = [
  {
    'name': 'عباية كلاسيكية أنيقة',
    'name_en': 'Elegant Classic Abaya',
    'description': 'عباية كلاسيكية سوداء مع تطريز يدوي فاخر على الأكمام والأطراف',
    'description_en': 'Classic black abaya with luxurious hand embroidery on sleeves and edges',
    'price': 899.99,
    'image': 'https://i.imgur.com/1XcVqp4.jpg',
    'images': [
      'https://i.imgur.com/1XcVqp4.jpg',
      'https://i.imgur.com/2YcVqp5.jpg',
      'https://i.imgur.com/3XcVqp6.jpg',
    ],
    'sizes': ['S', 'M', 'L', 'XL'],
    'colors': ['أسود', 'كحلي', 'بني'],
    'category': 'كلاسيك',
    'rating': 4.8,
    'reviews_count': 125,
  },
  {
    'name': 'عباية دبي الفاخرة',
    'name_en': 'Dubai Luxury Abaya',
    'description': 'عباية عصرية بتصميم دبي مع لمسات ذهبية وتطريز حديث',
    'description_en': 'Modern Dubai-style abaya with gold accents and contemporary embroidery',
    'price': 1299.99,
    'image': 'https://i.imgur.com/4XcVqp7.jpg',
    'images': [
      'https://i.imgur.com/4XcVqp7.jpg',
      'https://i.imgur.com/5XcVqp8.jpg',
      'https://i.imgur.com/6XcVqp9.jpg',
    ],
    'sizes': ['S', 'M', 'L', 'XL'],
    'colors': ['أسود', 'رمادي', 'نيلي'],
    'category': 'عصري',
    'rating': 4.9,
    'reviews_count': 89,
  },
  {
    'name': 'عباية الفراشة',
    'name_en': 'Butterfly Abaya',
    'description': 'عباية مميزة بتصميم الفراشة مع تطريز ناعم وأكمام واسعة',
    'description_en': 'Distinctive butterfly design abaya with soft embroidery and wide sleeves',
    'price': 749.99,
    'image': 'https://i.imgur.com/7XcVqp0.jpg',
    'images': [
      'https://i.imgur.com/7XcVqp0.jpg',
      'https://i.imgur.com/8XcVqp1.jpg',
      'https://i.imgur.com/9XcVqp2.jpg',
    ],
    'sizes': ['S', 'M', 'L', 'XL'],
    'colors': ['أسود', 'بيج', 'زيتي'],
    'category': 'كاجوال',
    'rating': 4.7,
    'reviews_count': 156,
  },
  {
    'name': 'عباية المساء الملكية',
    'name_en': 'Royal Evening Abaya',
    'description': 'عباية سهرة فاخرة مع تطريز كريستال وتصميم ملكي',
    'description_en': 'Luxurious evening abaya with crystal embroidery and royal design',
    'price': 1599.99,
    'image': 'https://i.imgur.com/0XcVqp3.jpg',
    'images': [
      'https://i.imgur.com/0XcVqp3.jpg',
      'https://i.imgur.com/1YcVqp4.jpg',
      'https://i.imgur.com/2YcVqp5.jpg',
    ],
    'sizes': ['S', 'M', 'L', 'XL'],
    'colors': ['أسود', 'ذهبي', 'فضي'],
    'category': 'سهرة',
    'rating': 5.0,
    'reviews_count': 78,
  },
];

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final firestore = FirebaseFirestore.instance;
  final batch = firestore.batch();

  for (final abaya in abayaData) {
    final docRef = firestore.collection('abayas').doc();
    batch.set(docRef, {
      ...abaya,
      'id': docRef.id,
      'created_at': FieldValue.serverTimestamp(),
    });
  }

  await batch.commit();
  print('Successfully added sample abayas to Firestore');
}
