import 'package:flutter/material.dart';
import 'package:travelby_app/shared/theme.dart';

import '../../shared/assets.dart';

class DestinationTile extends StatelessWidget {
  final String name;
  final String city;
  final double rate;
  final String imageUrl;

  const DestinationTile({
    super.key,
    required this.name,
    required this.city,
    this.rate = 0.0,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail');
      },
      child: Container(
        // width: ,
        // height: ,
        margin: const EdgeInsets.only(top: 16),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Row(children: [
          Container(
            width: 70,
            height: 70,
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  city,
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 20,
                width: 20,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAsset.iconStar),
                  ),
                ),
              ),
              const SizedBox(width: 2),
              Text(
                rate.toString(),
                style: blackTextStyle.copyWith(fontWeight: medium),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
