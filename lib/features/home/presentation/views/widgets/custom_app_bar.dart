import 'package:bookly/core/utlis/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 55, bottom: 55, right: 10),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 22,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                size: 20,
                FontAwesomeIcons.magnifyingGlass,
              ))
        ],
      ),
    );
  }
}
