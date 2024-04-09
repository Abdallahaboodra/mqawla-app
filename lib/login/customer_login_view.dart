
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/extension.dart';
import 'package:flutter_application_1/home/home_page.dart';
import 'package:flutter_application_1/login/rest_password_view.dart';
import 'package:loading_overlay/loading_overlay.dart';

import '../common/color_extension.dart';
import '../common/globs.dart';
import '../common_widget/round_button.dart';
import '../common_widget/round_icon_button.dart';
import '../common_widget/round_textfield.dart';
import 'customer_sing_up_view.dart';

class CustomerLoginView extends StatefulWidget {
  const CustomerLoginView({super.key});

  @override
  State<CustomerLoginView> createState() => _CustomerLoginViewState();
}

class _CustomerLoginViewState extends State<CustomerLoginView> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  GlobalKey<FormState> formlKey = GlobalKey();
  bool isLoading = false;
  // final GoogleSignIn googleSignIn = GoogleSignIn();
  // final FirebaseAuth auth = FirebaseAuth.instance;
  // FacebookLogin facebookLogin = FacebookLogin();

  @override
  Widget build(BuildContext context) {
    // var media = MediaQuery.of(context).size;

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
                    "تسجيل الدخول",
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
                    hintText: "البريد الإلكتروني",
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

                        // isLoading = true;
                        // setState(() {});
                        // try {
                        //   await loginUser();

                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => const OnBoardingView(),
                        //     ),
                        //   );

                        //   // showSnakeBar(context, 'sucess');
                        // } on FirebaseAuthException catch (e) {
                        //   if (e.code == 'wrong-password'.tr()) {
                        //     // showSnakeBar(context, 'email already exists');
                        //     mdShowAlert(Globs.wrongPassword.tr(),
                        //         MSG.wrongPassword.tr(), () {});
                        //   } else if (e.code == 'user-not-found'.tr()) {
                        //     mdShowAlert(
                        //         Globs.emailNotFound, MSG.emailNotFound, () {});
                        //   }
                        //   isLoading = false;
                        //   setState(() {});
                        // }
                          Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeView(),
                        ),
                      );
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
                    height: 30,
                  ),
                  Text(
                    "أو تسجيل الدخول باستخدام",
                    style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // RoundIconButton(
                  //   icon: "assets/img/facebook_logo.png",
                  //   title: "تسجيل الدخول باستخدام فيسبوك",
                  //   color: const Color(0xff367FC0),
                  //   onPressed: () async {
                  //     await signInWithFacebook();
                  //   },
                  // ),
                  const SizedBox(
                    height: 25,
                  ),
                  RoundIconButton(
                    icon: Icons.mail,
                    title: "تسجيل الدخول باستخدام جوجل",
                    color: const Color(0xffDD4B22232),
                    onPressed: () async {
                      await signInWithGoogle();

                      // var googleSignInAccount = await googleSignIn.signIn();
                      // var googleSignInAccountAuthentication =
                      //     await googleSignInAccount!.authentication;
                      // AuthCredential authCredential =
                      //     GoogleAuthProvider.credential(
                      //   idToken: googleSignInAccountAuthentication.idToken,
                      //   accessToken:
                      //       googleSignInAccountAuthentication.accessToken,
                      // );
                      // var authResult =
                      //     await auth.signInWithCredential(authCredential);
                      // var user = authResult.user;
                    },
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CustomerSignUpView(),
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
                          "سجّل الآن",
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

  Future signInWithFacebook() async {
    // final LoginResult loginResult =
    //     await FacebookAuth.instance.login(permissions: ['email']);

    // // Create a credential from the access token
    // final OAuthCredential facebookAuthCredential =
    //     FacebookAuthProvider.credential(loginResult.accessToken!.token);

    // // Once signed in, return the UserCredential
    // return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }

  Future<void> signInWithGoogle() async {
    // try {
    //   isLoading = true;
    //   setState(() {});
    //   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    //   if (googleUser != null) {
    //     final GoogleSignInAuthentication? googleAuth =
    //         await googleUser?.authentication;

    //     final credential = GoogleAuthProvider.credential(
    //       accessToken: googleAuth?.accessToken,
    //       idToken: googleAuth?.idToken,
    //     );

    //     await FirebaseAuth.instance.signInWithCredential(credential);

    //     // Navigate to the next page after successful sign-in
    //     Navigator.push(
    //         context,
    //         MaterialPageRoute(
    //           builder: (context) => const OnBoardingView(),
    //         ));
    //   }
    // } catch (e) {
    //   print('Error signing in with Google: $e');
    //   // Handle error
    // }
    // isLoading = false;
    // setState(() {});
  }

  Future<void> loginUser() async {
    // final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    //     email: txtEmail.text, password: txtPassword.text);
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
