import 'package:flutter/material.dart';

class Personitem extends StatelessWidget {
  String name;
  Personitem({required this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              Container(
                width: 84,
                height: 84,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://img.myloview.com.br/adesivos/teenager-or-student-isolated-on-color-background-700-195296033.jpg'),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                width: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const Text(
                    'Your Order Just Arrived',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
              const Spacer(),
              const Text(
                '20:00',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
