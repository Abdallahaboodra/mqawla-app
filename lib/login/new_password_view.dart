
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/extension.dart';

import '../../common/globs.dart';
import '../../common_widget/round_textfield.dart';
import '../common/color_extension.dart';
import '../common_widget/round_button.dart';
import 'customer_login_view.dart';

class NewPasswordView extends StatefulWidget {
  const NewPasswordView();

  @override
  State<NewPasswordView> createState() => _NewPasswordViewState();
}

class _NewPasswordViewState extends State<NewPasswordView> {
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 64,
              ),
              Text(
                "كلمة مرور جديدة",
                style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 30,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "الرجاء إدخال كلمة المرور الجديدة",
                style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 60,
              ),
              RoundTextfield(
                hintText: "كلمة المرور الجديدة",
                controller: txtPassword,
                obscureText: true,
              ),
              const SizedBox(
                height: 25,
              ),
              RoundTextfield(
                hintText: "تأكيد كلمة المرور",
                controller: txtConfirmPassword,
                obscureText: true,
              ),
              const SizedBox(
                height: 30,
              ),
              RoundButton(
                  title: "التالي",
                  onPressed: () {
                    btnSubmit();
                  }),
            ],
          ),
        ),
      ),
    );
  }

  //TODO: Action
  void btnSubmit() {
    if (txtPassword.text.length < 6) {
      mdShowAlert(Globs.appName, MSG.enterPassword, () {});
      return;
    }

    if (txtPassword.text != txtConfirmPassword.text) {
      mdShowAlert(Globs.appName, MSG.enterPasswordNotMatch, () {});
      return;
    } else
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const CustomerLoginView()));

    endEditing();

    // serviceCallForgotSetNew({
    //   "user_id": widget.nObj[KKey.userId].toString(),
    //   "reset_code": widget.nObj[KKey.resetCode].toString(),
    //   "new_password": txtPassword.text
    // });
  }

  //TODO: ServiceCall

  void serviceCallForgotSetNew(Map<String, dynamic> parameter) {
    // Globs.showHUD();

    // ServiceCall.post(parameter, SVKey.svForgotPasswordSetNew,
    //     withSuccess: (responseObj) async {
    //   Globs.hideHUD();
    //   if (responseObj[KKey.status] == "1") {
    //     mdShowAlert(Globs.appName,
    //         responseObj[KKey.message] as String? ?? MSG.success, () {
    // Navigator.pushAndRemoveUntil(
    //     context,
    //     MaterialPageRoute(builder: (context) => const LoginView()),
    //     (route) => false);
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const CustomerLoginView()));

    //         });
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
