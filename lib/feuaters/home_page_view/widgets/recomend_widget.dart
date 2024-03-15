import 'package:fake_api_store/core/widgets/custom_title.dart';
import 'package:flutter/material.dart';

class RecomendationsWidget extends StatelessWidget {
  const RecomendationsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomTitle(text: 'Recommended for you'),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SizedBox(
            height: 360,
            child: Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) => const RecommendCard())),
            ),
          ),
        )
      ],
    );
  }
}

class RecommendCard extends StatelessWidget {
  const RecommendCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      decoration: const BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(6)),
            child: Image.asset(
              'assets/images/photo02.png',
              height: 220,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5.0),
            child: Row(
              children: [
                CustomSubTitle(text: 'Caterpiller'),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.favorite_border_outlined,
                  size: 22,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            'Caterpillar Mens T-...',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600]),
          ),
          const PriceTag(),
          MaterialButton(
            minWidth: 150,
            onPressed: () {},
            shape: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Text(
              'Add to Bag',
              style: TextStyle(color: Colors.grey[700]),
            ),
          )
        ],
      ),
    );
  }
}

class PriceTag extends StatelessWidget {
  const PriceTag({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.red, width: 1.4)),
          height: 25,
          width: 80,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.discount_outlined,
                size: 18,
                color: Colors.red,
              ),
              Text(
                '\$35.91',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            '\$79.9',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.grey[600],
                decoration: TextDecoration.lineThrough),
          ),
        ),
      ],
    );
  }
}
