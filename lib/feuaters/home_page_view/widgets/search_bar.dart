import 'package:flutter/material.dart';

import '../../../core/utils/conistant.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size / 5;

    return Row(
      children: [
        Expanded(
          flex: 8,
          child: Container(
            margin: const EdgeInsets.only(left: 10),
            padding: const EdgeInsets.only(right: 10, left: 8),
            height: 50,
            decoration: BoxDecoration(
                color: kMain02Color,
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: Row(
              children: [
                const Icon(
                  Icons.search_outlined,
                  size: 32,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Search on TRINDSE',
                  style: TextStyle(fontSize: 16),
                ),
                Padding(
                  padding: EdgeInsets.only(left: size.width * 1.4),
                  child: const Icon(Icons.camera_alt_outlined),
                )
              ],
            ),
          ),
        ),
        const Expanded(
            flex: 1,
            child: SizedBox(
              child: Icon(Icons.notifications_none_outlined),
            ))
      ],
    );
  }
}
