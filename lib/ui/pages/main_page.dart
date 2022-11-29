import 'package:flutter/material.dart';
import 'package:travelby_app/shared/assets.dart';
import 'package:travelby_app/shared/theme.dart';
import 'package:travelby_app/ui/pages/content/home_page.dart';
import 'package:travelby_app/ui/widgets/custom_button_navigation_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return const HomePage();
    }

    Widget buttonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.circular(
              defaultRadius,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomButtonNavigationItem(
                imageUrl: AppAsset.iconHome,
                isSelected: true,
              ),
              CustomButtonNavigationItem(
                imageUrl: AppAsset.iconBooking,
              ),
              CustomButtonNavigationItem(
                imageUrl: AppAsset.iconCard,
              ),
              CustomButtonNavigationItem(
                imageUrl: AppAsset.iconSettings,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),
          buttonNavigation(),
        ],
      ),
    );
  }
}
