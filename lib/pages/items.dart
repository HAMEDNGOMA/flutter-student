// ignore_for_file: prefer_const_constructors


import 'package:finle/shard/appbar.dart';
import 'package:finle/model/item.dart';
// ignore: unused_import
import 'package:finle/shard/colors.dart';

import 'package:flutter/material.dart';

import 'package:finle/pages/checkout.dart';


class Home extends StatelessWidget {
  // ignore: use_super_parameters
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 22),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 33),
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                   
                    onTap: () {
                    Navigator.pushNamed(context, "/");
                      
                      
                      
                    
                  },
                 

    

                  
                    
                child: GridTile(
                    footer: GridTileBar(
// backgroundColor: Color.fromARGB(66, 73, 127, 110),
                    
                       trailing: IconButton(
                          color: const Color.fromARGB(255, 138, 13, 90),
                          onPressed: () {
                            
                          },
                          icon: const Icon(Icons.check)),

                      leading: const Text("10"),

                      title: const Text(
                        "",
                      ),
                    ),
                    child: Stack(children: [
                      Positioned(
                        top: -3,
                        bottom: -9,
                        right: 0,
                        left: 0,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(55),
                            child: Image.asset(items[index].imgPath)),
                      ),
                    ]),
                  ),
                );
              }),
        ),
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assetss/imags/692ccd8d30da587aa40c8e6d3d12b727.jpg"),
                          fit: BoxFit.cover),
                    ),
                    
                    accountEmail: Text("otur@gmail.com"),
                    accountName: Text("otur",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        )),
                  ),
                  ListTile(
                      title: const Text("Home"),
                      leading: const Icon(Icons.home),
                      onTap: () {
                        Navigator.pushNamed(context, "/");
                          
                        
                      }),
                  ListTile(
                      title: const Text("My products"),
                      leading: const Icon(Icons.add_shopping_cart),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CheckOut(),
                          ),
                        );
                      }),
                  ListTile(
                      title: const Text("About"),
                      leading: const Icon(Icons.help_center),
                      onTap: () {}),
                  ListTile(
                      title: const Text("Profile Page"),
                      leading: const Icon(Icons.person),
                      onTap: () {
                        Navigator.pushNamed(context, "/");
                          
                  
                  
                      }),
                  ListTile(
                      title: const Text("Logout"),
                      leading: const Icon(Icons.exit_to_app),
                      onTap: () {
                        
                      }),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 12),
                child: const Text("Developed by otor",
                    style: TextStyle(fontSize: 16)),
              )
            ],
          ),
        ),
        appBar: AppBar(
          actions: const [ProductsAndPrice()],
          backgroundColor: const Color.fromARGB(255, 141, 76, 119),
          title: const Text("Home"),
        ));
  }
}