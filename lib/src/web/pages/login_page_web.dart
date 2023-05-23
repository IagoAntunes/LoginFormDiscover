import 'package:flutter/material.dart';
import 'package:login_form_discover/core/components/head_info_widget.dart';
import 'package:login_form_discover/core/components/login_button_widget.dart';
import 'package:login_form_discover/core/components/register_info_widget.dart';
import 'package:login_form_discover/core/components/sub_options_widget.dart';

import '../../../core/components/app_bar_logo_widget.dart';
import '../../../core/components/custom_input_widget.dart';
import '../../../core/utils/colors.dart';

class LoginPageWeb extends StatelessWidget {
  LoginPageWeb({super.key});
  final FocusNode _focusNodeEmail = FocusNode();
  final FocusNode _focusNodePassword = FocusNode();

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  final ValueNotifier remember = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: size.width > 1200
            ? Row(
                children: [
                  CardLogin(
                    size: size,
                    controllerEmail: _controllerEmail,
                    focusNodeEmail: _focusNodeEmail,
                    controllerPassword: _controllerPassword,
                    focusNodePassword: _focusNodePassword,
                    remember: remember,
                  ),
                  if (size.width > 800)
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/back_web.jpg'),
                          ),
                        ),
                        child: Column(
                          children: const [],
                        ),
                      ),
                    )
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: CardLogin(
                      isVertical: true,
                      size: size,
                      controllerEmail: _controllerEmail,
                      focusNodeEmail: _focusNodeEmail,
                      controllerPassword: _controllerPassword,
                      focusNodePassword: _focusNodePassword,
                      remember: remember,
                    ),
                  ),
                  if (size.width > 800)
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/back_web.jpg'),
                          ),
                        ),
                        child: Column(
                          children: const [],
                        ),
                      ),
                    )
                ],
              ),
      ),
    );
  }
}

class CardLogin extends StatelessWidget {
  const CardLogin({
    super.key,
    required this.size,
    required TextEditingController controllerEmail,
    required FocusNode focusNodeEmail,
    required TextEditingController controllerPassword,
    required FocusNode focusNodePassword,
    required this.remember,
    this.isVertical = false,
  })  : _controllerEmail = controllerEmail,
        _focusNodeEmail = focusNodeEmail,
        _controllerPassword = controllerPassword,
        _focusNodePassword = focusNodePassword;

  final Size size;
  final TextEditingController _controllerEmail;
  final FocusNode _focusNodeEmail;
  final TextEditingController _controllerPassword;
  final FocusNode _focusNodePassword;
  final ValueNotifier remember;
  final bool isVertical;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xff191816),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const AppBarLogo(),
              SizedBox(height: isVertical ? 5 : 50),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    padding: EdgeInsets.all(isVertical ? 20 : 40),
                    width: size.width * 0.6,
                    height:
                        isVertical ? size.height * 0.43 : size.height * 0.55,
                    decoration: const BoxDecoration(
                      color: AppColors.backgCont,
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const HeadInfo(),
                            SizedBox(height: isVertical ? 15 : 30),
                            Form(
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: isVertical
                                        ? size.width * 0.45
                                        : size.width * 0.25,
                                    child: CustomTextForm(
                                      controller: _controllerEmail,
                                      hintText: 'Digite seu e-mail',
                                      isObsucre: false,
                                      title: 'E-mail',
                                      preffixIcon: Icons.email_outlined,
                                      focusNode: _focusNodeEmail,
                                    ),
                                  ),
                                  SizedBox(height: isVertical ? 5 : 20),
                                  SizedBox(
                                    width: isVertical
                                        ? size.width * 0.45
                                        : size.width * 0.25,
                                    child: CustomTextForm(
                                      controller: _controllerPassword,
                                      hintText: 'Digite sua senha',
                                      isObsucre: true,
                                      title: 'Senha',
                                      preffixIcon: Icons.password_outlined,
                                      suffixIcon: Icons.visibility_outlined,
                                      focusNode: _focusNodePassword,
                                    ),
                                  ),
                                  SizedBox(height: isVertical ? 5 : 10),
                                  SizedBox(
                                    width: isVertical
                                        ? size.width * 0.45
                                        : size.width * 0.25,
                                    child: SubOptions(remember: remember),
                                  ),
                                  const SizedBox(height: 10),
                                  SizedBox(
                                    width: isVertical
                                        ? size.width * 0.45
                                        : size.width * 0.25,
                                    child: LoginButton(),
                                  ),
                                  SizedBox(height: isVertical ? 5 : 10),
                                  const RegisterInfo(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
