import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class HeadInfo extends StatelessWidget {
  const HeadInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Icon(
              Icons.login_outlined,
              color: AppColors.orange,
            ),
            SizedBox(width: 5),
            Text(
              "Faça seu login",
              style: TextStyle(
                color: AppColors.lightOrange,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          "Entre com suas informações de cadastro.",
          style: GoogleFonts.roboto().copyWith(
            color: AppColors.grey,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
