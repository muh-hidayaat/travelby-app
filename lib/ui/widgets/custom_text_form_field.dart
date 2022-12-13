import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obSecureText;
  final TextEditingController controller;

  const CustomTextFormField(
      {super.key,
      required this.title,
      required this.hintText,
      this.obSecureText = false,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
          ),
          const SizedBox(height: 6),
          TextFormField(
            cursorColor: kBlackColor,
            controller: controller,
            obscureText: obSecureText,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: const BorderSide(color: kInactiveColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: const BorderSide(color: kPrimaryColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
