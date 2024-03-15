import 'package:fake_api_store/core/widgets/custom_title.dart';
import 'package:flutter/material.dart';

class ShopByCategory extends StatelessWidget {
  const ShopByCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomTitle(text: 'Shop By Category'),
        const SizedBox(
          height: 5,
        ),
        GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            shrinkWrap: true,
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 0.7),
            itemCount: 6,
            itemBuilder: (context, index) {
              List<Color> colors = [
                Colors.purple,
                Colors.teal,
                Colors.blue.shade300,
                Colors.yellow.shade700,
                Colors.teal.shade400,
                Colors.deepPurple,
              ];
              return CategoryTile(
                color: colors[index],
              );
            })
      ],
    );
  }
}

class CategoryTile extends StatelessWidget {
  const CategoryTile({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(6)),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: SizedBox(
            height: 100,
            width: 100,
            child: Image.asset(
              'assets/images/photo03.png',
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        const Column(
          children: [
            Text(
              'T-Shirt',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              'UNDER \$40',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )
          ],
        )
      ]),
    );
  }
}
