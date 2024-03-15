import 'package:fake_api_store/core/utils/conistant.dart';
import 'package:flutter/material.dart';

class TopBrandsWidget extends StatefulWidget {
  const TopBrandsWidget({super.key});

  @override
  State<TopBrandsWidget> createState() => _TopBrandsWidgetState();
}

class _TopBrandsWidgetState extends State<TopBrandsWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        primary: false,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return const BrandsCard();
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            // mainAxisSpacing: 2,
            // crossAxisSpacing: 2,
            childAspectRatio: 0.65));
  }
}

class BrandsCard extends StatelessWidget {
  const BrandsCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context) / 10;
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 10,
            spreadRadius: 3,
            offset: const Offset(0, 3))
      ]),
      child: Column(
        children: [
          Image.asset(
            'assets/images/photo01.png',
            height: 150,
            width: 120,
            fit: BoxFit.fill,
          ),
          const Text(
            'Clavin kal',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
          Container(
            width: size.width * 3,
            decoration: BoxDecoration(color: kMain02Color),
            child: const Text(
              'UP TO 40 %OFF',
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
