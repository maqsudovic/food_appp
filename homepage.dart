import 'package:flutter/material.dart';
import 'package:food_app_new/homepageitem.dart';
import 'package:food_app_new/personpage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value == 1) {
            Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
              return Person();
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
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/3/38/Solid_white_bordered.png'),
                  fit: BoxFit.cover)),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Find Your',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.brown),
                      ),
                      Text(
                        'Favourite Food',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.brown),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: Colors.black)),
                    child: const Icon(
                      Icons.notifications_active,
                      size: 40,
                      color: Colors.brown,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.brown.shade200,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.brown,
                            size: 50,
                          ),
                          Text(
                            'What do you want to order?',
                            style: TextStyle(color: Colors.brown, fontSize: 16),
                          ),
                        ],
                      )),
                  const Spacer(),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.brown.shade200,
                        border: Border.all(color: Colors.brown)),
                    child: const Icon(
                      Icons.sort_rounded,
                      size: 40,
                      color: Colors.brown,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 80,
                height: 40,
                padding: EdgeInsets.all(5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.brown.shade200),
                child: const Row(
                  children: [
                    Text(
                      'Soup',
                      style: TextStyle(
                          color: Colors.brown, fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    Icon(
                      Icons.cancel_sharp,
                      color: Colors.brown,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Popular menu',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
              ),
              HomepageItem(
                  namefood: 'Steak', categoryfood: 'Meat', price: '15'),
              HomepageItem(
                  namefood: 'Lavash', categoryfood: 'fast', price: '5'),
              HomepageItem(
                  namefood: 'Burger', categoryfood: 'fast', price: '10'),
              HomepageItem(namefood: 'Gril', categoryfood: 'Meat', price: '5'),
              HomepageItem(namefood: 'Kfs', categoryfood: 'fast', price: '10'),
              HomepageItem(
                  namefood: 'Steak', categoryfood: 'Meat', price: '15'),
            ],
          ),
        ),
      ),
    );
  }
}
