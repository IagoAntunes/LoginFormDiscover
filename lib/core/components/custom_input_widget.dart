import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class CustomTextForm extends StatefulWidget {
  const CustomTextForm({
    super.key,
    required this.controller,
    required this.title,
    required this.hintText,
    this.suffixIcon,
    this.preffixIcon,
    required this.isObsucre,
    required this.focusNode,
  });
  final String hintText;
  final String title;
  final bool isObsucre;
  final IconData? suffixIcon;
  final IconData? preffixIcon;
  final FocusNode focusNode;
  final TextEditingController controller;

  @override
  State<CustomTextForm> createState() => _CustomTextFormState();
}

class _CustomTextFormState extends State<CustomTextForm> {
  bool isFocused = false;
  @override
  void initState() {
    super.initState();
    widget.focusNode.addListener(_handleFocusChange);
  }

  @override
  void dispose() {
    super.dispose();
    widget.focusNode.removeListener(_handleFocusChange);
  }

  void _handleFocusChange() {
    setState(() {
      isFocused = widget.focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
            color: AppColors.grey,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 5),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 3,
              color: isFocused ? AppColors.orange : AppColors.grey2,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: TextFormField(
            controller: widget.controller,
            focusNode: widget.focusNode,
            obscureText: widget.isObsucre,
            style: GoogleFonts.roboto().copyWith(color: Colors.white),
            decoration: InputDecoration(
              prefixIcon: Icon(
                widget.preffixIcon,
                color: isFocused ? AppColors.orange : AppColors.grey2,
                size: 20,
              ),
              suffixIcon: Icon(
                widget.suffixIcon,
                color: isFocused ? AppColors.orange : AppColors.grey2,
                size: 20,
              ),
              hintText: widget.hintText,
              hintStyle: const TextStyle(
                color: AppColors.grey,
                fontSize: 14,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
