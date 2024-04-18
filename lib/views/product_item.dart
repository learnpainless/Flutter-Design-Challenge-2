import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Image.asset(
              'assets/images/tobias-tullius-Fg15LdqpWrs-unsplash.jpg'),
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xffe2d9cd), width: 2)),
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Text(
              'fear of god'.toUpperCase(),
              style: TextStyle(
                color: Color(0xff95959c),
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Icon(
              Icons.favorite_border_outlined,
              color: Color(0xff95959c),
              size: 20,
            ),
          ],
        ),
        Text(
          'Wool overcoat',
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Text(
              '\$ 2,450',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_right_alt_rounded,
              color: Color(0xff95959c),
              size: 20,
            ),
          ],
        )
      ],
    );
  }
}
