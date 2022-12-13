import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelby_app/cubit/page_cubit.dart';
import 'package:travelby_app/shared/assets.dart';
import 'package:travelby_app/shared/theme.dart';
import 'package:travelby_app/ui/pages/content/home_page.dart';
import 'package:travelby_app/ui/pages/content/setting_page.dart';
import 'package:travelby_app/ui/pages/content/transaction_page.dart';
import 'package:travelby_app/ui/pages/content/wallet_page.dart';
import 'package:travelby_app/ui/widgets/custom_bottom_navigation_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const TransactionPage();
        case 2:
          return const WalletPage();
        case 3:
          return const SettingPage();
        default:
          return const HomePage();
      }
    }

    Widget bottomNavigation() {
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
              CustomBottomNavigationItem(
                index: 0,
                imageUrl: AppAsset.iconHome,
              ),
              CustomBottomNavigationItem(
                index: 1,
                imageUrl: AppAsset.iconBooking,
              ),
              CustomBottomNavigationItem(
                index: 2,
                imageUrl: AppAsset.iconCard,
              ),
              CustomBottomNavigationItem(
                index: 3,
                imageUrl: AppAsset.iconSettings,
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              bottomNavigation(),
            ],
          ),
        );
      },
    );
  }
}
