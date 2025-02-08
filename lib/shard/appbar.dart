import 'package:finle/pages/checkout.dart';

import 'package:flutter/material.dart';

class ProductsAndPrice extends StatelessWidget {
  // ignore: use_super_parameters
  const ProductsAndPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckOut(),
                  ),
                );
              },
              icon: Icon(Icons.add_shopping_cart),
            ),
          ],
        ),
      ],
    );
  }
}
