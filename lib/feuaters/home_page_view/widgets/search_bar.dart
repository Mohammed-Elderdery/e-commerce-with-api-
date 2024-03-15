import 'package:flutter/material.dart';

import '../../../core/utils/conistant.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size / 5;

    return const Row(
      children: [
        Expanded(
          flex: 8,
          child: TextFieldWidget(),
        ),
        Expanded(
            flex: 1,
            child: SizedBox(
              child: Icon(Icons.notifications_none_outlined),
            ))
      ],
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: kMain02Color,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: const Icon(Icons.search),
            suffixIcon: IconButton(
                onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
            hintText: 'Search on TRENDSIE',
            hintStyle: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w400)),
      ),
    );
  }
}
