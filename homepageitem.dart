import 'package:flutter/material.dart';

class HomepageItem extends StatelessWidget {
  String namefood;
  String categoryfood;
  String price;
  HomepageItem(
      {super.key,
      required this.namefood,
      required this.categoryfood,
      required this.price});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          width: 390,
          height: 87,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.grey.shade300)),
          child: Row(
            children: [
              Container(
                width: 84,
                height: 84,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://t4.ftcdn.net/jpg/05/61/82/83/360_F_561828375_KCtTuNdpQTjHrMqDrcoCpoLaYhLrZQdI.jpg'),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                width: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    namefood,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Text(
                    categoryfood,
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                '\$ $price',
                style: const TextStyle(
                    color: Colors.orange,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
