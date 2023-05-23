import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class SubOptions extends StatelessWidget {
  const SubOptions({
    super.key,
    required this.remember,
  });

  final ValueNotifier remember;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ValueListenableBuilder(
              valueListenable: remember,
              builder: (context, value, child) {
                return Checkbox(
                  value: remember.value,
                  fillColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.disabled)) {
                      return Colors.grey.withOpacity(.32);
                    }
                    return Colors.orange;
                  }),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  onChanged: (value) {
                    remember.value = value;
                  },
                );
              },
            ),
            Text(
              "Lembre-me",
              style: GoogleFonts.roboto().copyWith(
                color: AppColors.grey,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ],
        ),
        TextButton(
          child: Text(
            "Esqueci minha senha",
            style: GoogleFonts.roboto().copyWith(
              color: AppColors.orange,
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
