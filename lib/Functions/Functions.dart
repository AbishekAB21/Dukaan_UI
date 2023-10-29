import 'package:flutter/material.dart';

ordersInfo(
    {required Widget order,
    required Image itemImage,
    required Widget date,
    required Widget amount,
    required BuildContext context}) {
  return InkWell(
      onTap: () {},
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: itemImage
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    order,
                    const SizedBox(
                      width: 145,
                    ),
                    amount,
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    date,
                    const SizedBox(
                      width: 125,
                    ),
                    const Icon(Icons.circle, color: Colors.green, size: 10),
                    const Text('Successfull'),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 70,
          ),
        ],
      ));
}