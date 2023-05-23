import 'package:flutter/material.dart';
import 'package:login_form_discover/core/utils/colors.dart';

import '../../../core/components/app_bar_logo_widget.dart';
import '../../../core/components/custom_input_widget.dart';
import '../../../core/components/head_info_widget.dart';
import '../../../core/components/login_button_widget.dart';
import '../../../core/components/register_info_widget.dart';
import '../../../core/components/sub_options_widget.dart';

class LoginFormPage extends StatelessWidget {
  LoginFormPage({super.key});
  final FocusNode _focusNodeEmail = FocusNode();
  final FocusNode _focusNodePassword = FocusNode();

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  final ValueNotifier remember = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const AppBarLogo(),
                const SizedBox(height: 50),
                const HeadInfo(),
                const SizedBox(height: 30),
                Form(
                  child: Column(
                    children: [
                      CustomTextForm(
                        controller: _controllerEmail,
                        hintText: 'Digite seu e-mail',
                        isObsucre: false,
                        title: 'E-mail',
                        preffixIcon: Icons.email_outlined,
                        focusNode: _focusNodeEmail,
                      ),
                      const SizedBox(height: 30),
                      CustomTextForm(
                        controller: _controllerPassword,
                        hintText: 'Digite sua senha',
                        isObsucre: true,
                        title: 'Senha',
                        preffixIcon: Icons.password_outlined,
                        suffixIcon: Icons.visibility_outlined,
                        focusNode: _focusNodePassword,
                      ),
                    ],
                  ),
                ),
                SubOptions(remember: remember),
                LoginButton(),
                const SizedBox(height: 20),
                const RegisterInfo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
