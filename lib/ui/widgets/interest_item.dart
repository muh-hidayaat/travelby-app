import 'package:flutter/material.dart';
import 'package:travelby_app/shared/assets.dart';

import '../../shared/theme.dart';

class InterestItem extends StatelessWidget {
  final String text;

  const InterestItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: const EdgeInsets.only(right: 6),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAsset.iconCheck),
              ),
            ),
          ),
          Text(
            text,
            style: blackTextStyle,
          ),
        ],
      ),
    );
  }
}
