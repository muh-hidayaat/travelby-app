import 'package:flutter/material.dart';
import 'package:travelby_app/shared/theme.dart';
import 'package:travelby_app/ui/widgets/custom_button.dart';
import 'package:travelby_app/ui/widgets/custom_text_form_field.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get \nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return const CustomTextFormField(
            title: 'Full Name', hintText: 'Your Full Name');
      }

      Widget emailInput() {
        return const CustomTextFormField(
            title: 'Email Address', hintText: 'Your Email Address');
      }

      Widget passwordInput() {
        return const CustomTextFormField(
          title: 'Password',
          hintText: 'Your Password',
          obSecureText: true,
        );
      }

      Widget hobbyInput() {
        return const CustomTextFormField(
            title: 'Hobby', hintText: 'Your Hobby');
      }

      Widget submitButton() {
        return CustomButton(
          title: 'Get Started',
          onPressed: () {
            Navigator.pushNamed(context, '/bonus');
          },
        );
      }

      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton(),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(
          top: 50,
          bottom: 50,
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
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            header(),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
