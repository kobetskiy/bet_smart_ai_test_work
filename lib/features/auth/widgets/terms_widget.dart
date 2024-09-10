import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsWidget extends StatelessWidget {
  const TermsWidget({
    super.key,
    required this.onTermsTap,
    required this.onPrivacyPolicyTap,
  });

  final void Function() onTermsTap;
  final void Function() onPrivacyPolicyTap;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      left: 0,
      bottom: 25,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Text.rich(
          TextSpan(
            text: 'By continuing, you agree to our ',
            style: Theme.of(context).textTheme.bodySmall,
            children: [
              TextSpan(
                text: 'Terms of Service',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                recognizer: TapGestureRecognizer()..onTap = onTermsTap,
              ),
              const TextSpan(text: ' and '),
              TextSpan(
                text: 'Privacy Policy',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                recognizer: TapGestureRecognizer()..onTap = onPrivacyPolicyTap,
              ),
              const TextSpan(text: '.'),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
