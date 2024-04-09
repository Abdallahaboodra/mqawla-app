import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../common/color_extension.dart';
import '../../common_widget/round_button.dart';
import '../../common_widget/round_textfield.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final ImagePicker picker = ImagePicker();
  XFile? image;

  TextEditingController txtName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtAddress = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 46,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "الملف الشخصي",
                        style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => MyOrderView()),
                          // );
                        },
                        // icon: Image.asset(
                        //   "assets/img/shopping_cart.png",
                        //   width: 25,
                        //   height: 25,
                        // ),
                        icon: Icon(Icons.shopping_cart),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: TColor.placeholder,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  alignment: Alignment.center,
                  child: image != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.file(
                            File(image!.path),
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        )
                      : Icon(
                          Icons.person,
                          size: 65,
                          color: TColor.secondaryText,
                        ),
                ),
                TextButton.icon(
                  onPressed: () async {
                    image = await picker.pickImage(source: ImageSource.gallery);
                    setState(() {});
                  },
                  icon: Icon(
                    Icons.edit,
                    color: TColor.primary,
                    size: 12,
                  ),
                  label: Text(
                    "تعديل الملف الشخصي",
                    style: TextStyle(color: TColor.primary, fontSize: 12),
                  ),
                ),
                Text(
                  "مرحبًا !",
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const WelcomeView()),
                    // );
                  },
                  child: Text(
                    "تسجيل الخروج",
                    style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  child: RoundTitleTextfield(
                    title: "الاسم",
                    hintText: "ادخل الاسم",
                    controller: txtName,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  child: RoundTitleTextfield(
                    title: "البريد الإلكتروني",
                    hintText: "ادخل البريد الإلكتروني",
                    keyboardType: TextInputType.emailAddress,
                    controller: txtEmail,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  child: RoundTitleTextfield(
                    title: "رقم الجوال",
                    hintText: "ادخل رقم الجوال",
                    controller: txtMobile,
                    keyboardType: TextInputType.phone,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  child: RoundTitleTextfield(
                    title: "العنوان",
                    hintText: "ادخل العنوان",
                    controller: txtAddress,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  child: RoundTitleTextfield(
                    title: "كلمة المرور",
                    hintText: "* * * * * *",
                    obscureText: true,
                    controller: txtPassword,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  child: RoundTitleTextfield(
                    title: "تأكيد كلمة المرور",
                    hintText: "* * * * * *",
                    obscureText: true,
                    controller: txtConfirmPassword,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: RoundButton(
                    title: "حفظ",
                    onPressed: () async {
                      // saveProfile();
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // void saveProfile() async {
  //   String name = txtName.text;
  //   String address = txtAddress.text;
  //   String phone = txtMobile.text;
  //   String email = txtEmail.text;
  //   String password = txtPassword.text;
  //   String resp = await StoreData().saveData(
  //     name: name,
  //     address: address,
  //     phone: phone,
  //     email: email,
  //     password: password,
  //   );
  // }
}
