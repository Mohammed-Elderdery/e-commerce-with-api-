import 'package:fake_api_store/core/utils/conistant.dart';
import 'package:fake_api_store/core/widgets/custom_title.dart';
import 'package:fake_api_store/services/api_services.dart';
import 'package:flutter/material.dart';

import '../../../models/product.dart';
import 'recomend_widget.dart';
import 'search_bar.dart';
import 'shop_by_category.dart';
import 'top_brands.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

List<Product>? products;
int current = 0;

class _HomeBodyState extends State<HomeBody> {
  @override
  void initState() {
    getELC();
    super.initState();
  }

  getELC() async {
    products = await ShopApi().getData();
  }

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      'All',
      'Women',
      'Men',
      'Luxury',
      'Sports',
      'Beauty',
      'Kids',
      'LifeStyle',
    ];

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 18),
                  child: SearchBarWidget(),
                ),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      scrollDirection: Axis.horizontal,
                      itemCount: products?.length,
                      itemBuilder: (context, index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                current = index;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8)),
                                  color: current == index
                                      ? Colors.black
                                      : kMain01Color,
                                ),
                                // height: 60,
                                child: Text(
                                  categories[index],
                                  style: TextStyle(
                                      color: current == index
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          )),
                ),
                const SizedBox(
                  height: 20,
                ),
                AspectRatio(
                  aspectRatio: 1.3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.asset(
                        'assets/images/photo02.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTitle(text: 'Top Brands on offer'),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: TopBrandsWidget(),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ShopByCategory(),
                const SizedBox(
                  height: 20,
                ),
                const RecomendationsWidget()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
