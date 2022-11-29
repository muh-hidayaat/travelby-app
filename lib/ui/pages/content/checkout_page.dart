import 'package:flutter/material.dart';
import 'package:travelby_app/shared/theme.dart';
import 'package:travelby_app/ui/widgets/booking_details_item.dart';
import 'package:travelby_app/ui/widgets/custom_button.dart';

import '../../../shared/assets.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});
  @override
  Widget build(BuildContext context) {
    Widget route() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(children: [
          Container(
            width: double.infinity,
            height: 65,
            margin: const EdgeInsets.only(bottom: 10),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image_checkout.png'),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CGK',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'Tangerang',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TLC',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'Ciliwung',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                ],
              ),
            ],
          )
        ]),
      );
    }

    Widget bookingDetails() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        // ignore: prefer_const_constructors
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //NOTE: Destination
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/image_destination1.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ciliwung Lake',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        'Tangerang',
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
                      '4.8',
                      style: blackTextStyle.copyWith(fontWeight: medium),
                    ),
                  ],
                ),
              ],
            ),

            //NOTE: Booking Deatil TItle
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Text(
                'Booking Details',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),

            //NOTE: Booking Deatils Item
            const BookingDetailsItem(
              title: 'Traveler',
              valueText: '2 Person',
              valueColor: kBlackColor,
            ),
            const BookingDetailsItem(
              title: 'Seat',
              valueText: 'A3, B3',
              valueColor: kBlackColor,
            ),
            const BookingDetailsItem(
              title: 'Insurance',
              valueText: 'YES',
              valueColor: kGreenColor,
            ),
            const BookingDetailsItem(
              title: 'Refundable',
              valueText: 'NO',
              valueColor: kRedColor,
            ),
            const BookingDetailsItem(
              title: 'VAT',
              valueText: '45%',
              valueColor: kBlackColor,
            ),
            const BookingDetailsItem(
              title: 'Price',
              valueText: 'IDR 8.500.000',
              valueColor: kBlackColor,
            ),
            const BookingDetailsItem(
              title: 'Grand Total',
              valueText: 'IDR 12.000.000',
              valueColor: kPrimaryColor,
            ),
          ],
        ),
      );
    }

    Widget paymentDetails() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        // ignore: prefer_const_constructors
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Payment Details',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 70,
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(AppAsset.bonusCard),
                    ),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          margin: const EdgeInsets.only(right: 6),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(AppAsset.logo),
                            ),
                          ),
                        ),
                        Text(
                          'Pay',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IDR 80.400.000',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Current Ballance',
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ]),
      );
    }

    Widget payNowButton() {
      return CustomButton(
        title: 'Pay Now',
        onPressed: () {
          Navigator.pushNamed(context, '/success-checkout');
        },
        margin: const EdgeInsets.only(top: 30),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(
          top: 30,
          bottom: 30,
        ),
        child: Text(
          'Term and Conditions',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          route(),
          bookingDetails(),
          paymentDetails(),
          payNowButton(),
          tacButton(),
        ],
      ),
    );
  }
}
