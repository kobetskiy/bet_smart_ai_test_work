import 'package:auto_route/auto_route.dart';
import 'package:bet_smart_ai/core/constants/app_icons.dart';
import 'package:bet_smart_ai/core/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpButtonsList extends StatelessWidget {
  const SignUpButtonsList({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> signUp() async {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('hasOnBoardingShown', true);
      if (!context.mounted) return;
      context.router.replace(const AppRoute());
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          _SignUpButton(onTap: signUp, iconPath: AppIcons.email),
          const SizedBox(width: 10),
          _SignUpButton(onTap: signUp, iconPath: AppIcons.apple),
          const SizedBox(width: 10),
          _SignUpButton(onTap: signUp, iconPath: AppIcons.google),
        ],
      ),
    );
  }
}

class _SignUpButton extends StatelessWidget {
  const _SignUpButton({
    required this.onTap,
    required this.iconPath,
  });

  final void Function() onTap;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 50,
          padding: const EdgeInsets.symmetric(vertical: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white.withOpacity(0.6),
          ),
          child: Center(
            child: Image.asset(iconPath),
          ),
        ),
      ),
    );
  }
}
