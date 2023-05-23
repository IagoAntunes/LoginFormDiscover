import 'package:flutter/material.dart';

import '../utils/colors.dart';

class AppBarLogo extends StatelessWidget {
  const AppBarLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/images/logo.png'),
        const Text(
          "camp.in",
          style: TextStyle(
            color: AppColors.lightOrange,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
