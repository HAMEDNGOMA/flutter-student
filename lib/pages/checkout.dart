

// ignore_for_file: unused_import

import 'package:finle/shard/appbar.dart';
import 'package:finle/shard/colors.dart';
import 'package:flutter/material.dart';


class CheckOut extends StatelessWidget {
  // ignore: use_super_parameters
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s=0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 141, 76, 114),
        title: Text("checkout screen"),
        actions: [ProductsAndPrice()],
      ),
      body: Column(
        children: [
          
          ElevatedButton(
            
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(const Color.fromARGB(255, 241, 39, 180)),
                // ignore: deprecated_member_use
                padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 79, vertical: 10)),
              shape: WidgetStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
            ),
            
            child: Text(
              // ignore: unnecessary_brace_in_string_interps
              "Pay \$${s}",
              style: TextStyle(fontSize: 19),
            ),
          ),
        ],
      ),
    );
  }
}