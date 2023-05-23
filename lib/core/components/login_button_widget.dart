import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class LoginButton extends StatelessWidget {
  LoginButton({
    super.key,
  });
  final ValueNotifier isHover = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isHover,
      builder: (context, value, child) {
        return SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  isHover.value ? const Color(0xff473404) : AppColors.orange,
            ),
            onPressed: () {},
            onHover: (value) {
              isHover.value = value;
            },
            child: Text(
              'ENTRAR',
              style: GoogleFonts.roboto().copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
          ),
        );
      },
    );
  }
}
