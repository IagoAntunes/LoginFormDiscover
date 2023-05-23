import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class RegisterInfo extends StatelessWidget {
  const RegisterInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "Não tem uma conta? ",
        style: GoogleFonts.roboto().copyWith(
          color: AppColors.orange,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
        children: [
          TextSpan(
            text: 'Registre-se',
            style: GoogleFonts.roboto().copyWith(
              color: AppColors.orange,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
