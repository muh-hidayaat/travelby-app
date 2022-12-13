import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelby_app/cubit/page_cubit.dart';

import '../../shared/theme.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final int index;
  final String imageUrl;

  const CustomBottomNavigationItem({
    super.key,
    required this.index,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: StreamBuilder(
          stream: context.read<PageCubit>().stream,
          builder: (context, snapshoot) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                Image.asset(
                  imageUrl,
                  width: 24,
                  height: 24,
                  color: context.read<PageCubit>().state == index
                      ? kPrimaryColor
                      : kGreyColor,
                ),
                Container(
                  width: 30,
                  height: 2,
                  decoration: BoxDecoration(
                    color: context.read<PageCubit>().state == index
                        ? kPrimaryColor
                        : kTransparentColor,
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                )
              ],
            );
          }),
    );
  }
}
