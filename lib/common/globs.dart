import 'dart:convert';

import 'package:flutter/services.dart';

class Globs {
  static const appName = "مقاوله";
  static const exitedEmail = "البريد الإلكتروني موجود بالفعل";
  static const wrongPassword = "كلمة المرور خاطئة";
  static const emailNotFound = "البريد الإلكتروني غير موجود";
  static const resetPassword = "إعادة تعيين كلمة المرور";

  static const userPayload = "بيانات المستخدم";
  static const userLogin = "تسجيل الدخول";

  // static void showHUD({String status = "جارٍ التحميل..."}) async {
  //   await Future.delayed(const Duration(milliseconds: 1));
  //   EasyLoading.show(status: status);
  // }

//   static void hideHUD() {
//     EasyLoading.dismiss();
//   }

//   static void udSet(dynamic data, String key) {
//     var jsonStr = json.encode(data);
//     prefs?.setString(key, jsonStr);
//   }

//   static void udStringSet(String data, String key) {
//   //...
//   }

//   static void udBoolSet(bool data, String key) {
//   //...
//   }

//   static void udIntSet(int data, String key) {
//   //...
//   }

//   static void udDoubleSet(double data, String key) {
//   //...
//   }

//   static dynamic udValue(String key) {
//   //...
//   }

//   static String udValueString(String key) {
//   //...
//   }

//   static bool udValueBool(String key) {
//   //...
//   }

//   static bool udValueTrueBool(String key) {
//   //...
//   }

//   static int udValueInt(String key) {
//   //...
//   }

//   static double udValueDouble(String key) {
//   //...
//   }

//   static void udRemove(String key) {
//   //...
//   }

//   static Future<String> timeZone() async {
//   //...
//   }
}

class SVKey {
//   static const mainUrl = "http://192.168.1.2:3001";
//   static const baseUrl = '$mainUrl/api/';
//   static const nodeUrl = mainUrl;

//   static const svLogin = '${baseUrl}login';
//   static const svSignUp = '${baseUrl}sign_up';
//   static const svForgotPasswordRequest = '${baseUrl}forgot_password_request';
//   static const svForgotPasswordVerify = '${baseUrl}forgot_password_verify';
//   static const svForgotPasswordSetNew = '${baseUrl}forgot_password_set_new';
}

class KKey {
  static const payload = "بيانات";
  static const status = "حالة";
  static const message = "رسالة";
  static const authToken = "رمز المصادقة";
  static const name = "الاسم";
  static const email = "البريد الإلكتروني";
  static const mobile = "الجوال";
  static const address = "العنوان";
  static const userId = "معرف المستخدم";
  static const resetCode = "رمز إعادة التعيين";
  // static const  = "";
  // static const  = "";
  // static const  = "";
  // static const  = "";
  // static const  = "";
  // static const  = "";
  // static const  = "";
  // static const  = "";
  // static const  = "";
  // static const  = "";
  // static const  = "";
  // static const  = "";
}

class MSG {
  static const enterEmail = "الرجاء إدخال عنوان بريد إلكتروني صالح.";
  static const enterName = "الرجاء إدخال الاسم الخاص بك.";
  static const enterCode = "الرجاء إدخال رمز إعادة التعيين الصالح.";
  static const exsistEmail = "الرجاء المحاولة مرة أخرى ببريد إلكتروني آخر.";
  static const wrongPassword = "الرجاء إدخال كلمة مرور صحيحة.";
  static const emailNotFound = "الرجاء إنشاء حساب.";
  static const resetPassword = "تحقق من بريدك الإلكتروني";
  static const enapleLocation = "يرجى فتح الموقع على تطبيقك";

  static const enterMobile = "الرجاء إدخال رقم هاتف جوال صالح.";
  static const enterAddress = "الرجاء إدخال عنوانك.";
  static const enterPassword =
      "الرجاء إدخال كلمة مرور تتكون من 6 أحرف على الأقل.";
  static const enterPasswordNotMatch = "الرجاء إدخال كلمة المرور غير متطابقة.";
  static const success = "نجاح";
  static const fail = "فشل";
}
