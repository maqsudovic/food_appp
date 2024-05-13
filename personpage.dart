import 'package:flutter/material.dart';
import 'package:food_app_new/personitem.dart';
import 'package:food_app_new/screens/chatpage.dart';

class Person extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value == 3) {
            Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
              return Chatpage();
            }));
          }
        },
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 171, 161, 161),
            label: 'home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Person',
            icon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: Icon(Icons.shopping_cart_sharp),
          ),
          BottomNavigationBarItem(
            label: 'Chat',
            icon: Icon(Icons.message),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://cdn.kibrispdr.org/data/910/white-png-2.png'),
                fit: BoxFit.none,
                opacity: 0.5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Chat',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            Personitem(name: 'Analwp'),
            Personitem(name: 'Guy Hawkins'),
            Personitem(name: 'Leslie Alexandar'),
            Personitem(name: 'Dianne Russel'),
          ],
        ),
      ),
    );
  }
}
