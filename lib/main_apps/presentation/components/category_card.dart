import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.img,
    required this.title,
  });

  final String img;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(img),
        ),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            bottom: 16,
          ),
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
