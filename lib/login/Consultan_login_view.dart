import 'dart:math';


import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/extension.dart';
import 'package:flutter_application_1/login/rest_password_view.dart';
import 'package:loading_overlay/loading_overlay.dart';

import '../../common_widget/round_icon_button.dart';
import '../../common_widget/round_textfield.dart';
import '../common/color_extension.dart';
import '../common/globs.dart';
import '../common_widget/round_button.dart';
import 'consultan_sing_up_view.dart';

class ConsultanLoginView extends StatefulWidget {
  const ConsultanLoginView({super.key});

  @override
  State<ConsultanLoginView> createState() => _ConsultanLoginViewState();
}

class _ConsultanLoginViewState extends State<ConsultanLoginView> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  GlobalKey<FormState> formlKey = GlobalKey();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return LoadingOverlay(
      isLoading: isLoading,
      child: Scaffold(
        body: Form(
          key: formlKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 64,
                  ),
                  Text(
                    "تسجيل دخول الاستشاري",
                    style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 30,
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "أضف تفاصيلك لتسجيل الدخول",
                    style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  RoundTextfield(
                    onSubmit: (data) {
                      txtEmail.text = data;
                    },
                    hintText: "البريد الإلكتروني الخاص بك",
                    controller: txtEmail,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  RoundTextfield(
                    onSubmit: (data) {
                      txtPassword.text = data;
                    },
                    hintText: "كلمة المرور",
                    controller: txtPassword,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  RoundButton(
                      title: "تسجيل الدخول",
                      onPressed: () async {
                        btnLogin();
                      }),
                  const SizedBox(
                    height: 4,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ResetPasswordView(),
                        ),
                      );
                    },
                    child: Text(
                      "هل نسيت كلمة المرور؟",
                      style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ConsultanSingUpView(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "ليس لديك حساب؟ ",
                          style: TextStyle(
                              color: TColor.secondaryText,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "سجل الآن",
                          style: TextStyle(
                              color: TColor.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  //TODO: Action
  void btnLogin() {
    if (!txtEmail.text.isEmail) {
      mdShowAlert(Globs.appName, MSG.enterEmail, () {});
      return;
    }

    if (txtPassword.text.length < 6) {
      mdShowAlert(Globs.appName, MSG.enterPassword, () {});
      return;
    }

    endEditing();

    serviceCallLogin({
      "email": txtEmail.text,
      "password": txtPassword.text,
      "push_token": ""
    });
  }

  //TODO: ServiceCall

  void serviceCallLogin(Map<String, dynamic> parameter) {
    // Globs.showHUD();

    // ServiceCall.post(parameter, SVKey.svLogin,
    //     withSuccess: (responseObj) async {
    //   Globs.hideHUD();
    //   if (responseObj[KKey.status] == "1") {

    //     Globs.udSet( responseObj[KKey.payload] as Map? ?? {} , Globs.userPayload);
    //     Globs.udBoolSet(true, Globs.userLogin);

    // Navigator.pushAndRemoveUntil(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => const OnBoardingView(),
    //     ),
    //     (route) => false);
    //   } else {
    //     mdShowAlert(Globs.appName,
    //         responseObj[KKey.message] as String? ?? MSG.fail, () {});
    //   }
    // }, failure: (err) async {
    //   Globs.hideHUD();
    //   mdShowAlert(Globs.appName, err.toString(), () {});
    // });
  }
}
