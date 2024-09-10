import 'package:flutter/material.dart';

class ContinueWithWidget extends StatelessWidget {
  const ContinueWithWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: Colors.white,
            thickness: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Continue with',
            style:
                Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16),
          ),
        ),
        const Expanded(
          child: Divider(
            color: Colors.white,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
