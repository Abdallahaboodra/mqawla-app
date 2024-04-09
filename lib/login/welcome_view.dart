// import 'package:construction_app/login/restarunt_owner_login_view.dart';
// import 'package:flutter/material.dart';

// import '../../common/color_extension.dart';
// import '../../common_widget/round_button.dart';
// import 'customer_login_view.dart';
// import 'delivery_man_login_view.dart';

// class WelcomeView extends StatefulWidget {
//   const WelcomeView({super.key});

//   @override
//   State<WelcomeView> createState() => _WelcomeViewState();
// }

// class _WelcomeViewState extends State<WelcomeView> {
//   @override
//   Widget build(BuildContext context) {
//     var media = MediaQuery.of(context).size;

//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Stack(
//               alignment: Alignment.bottomCenter,
//               children: [
//                 Image.asset(
//                   "assets/img/download (1).jpg",
//                   width: media.width,
//                 ),
//                 Image.asset(
//                   "assets/img/download.jpg",
//                   width: media.width * 0.55,
//                   height: media.width * 0.55,
//                   fit: BoxFit.contain,
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: media.width * 0.1,
//             ),
//             Text(
//               "مرحبًا بك في تطبيق مقاولات، المكان الأمثل للعثور على أفضل المقاولين لتحقيق مشاريعك بكل سهولة وجودة عالية.",
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                   color: TColor.secondaryText,
//                   fontSize: 13,
//                   fontWeight: FontWeight.w500),
//             ),
//             SizedBox(
//               height: media.width * 0.1,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25),
//               child: RoundButton(
//                 title: "تسجيل دخول المستخدم",
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const CustomerLoginView(),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25),
//               child: RoundButton(
//                 title: "تسجيل دخول المقاول",
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const RestruntOwnerLoginView(),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25),
//               child: RoundButton(
//                 title: "تسجيل دخول الاستشاري",
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const DeliveryManLoginView(),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_application_1/login/constructor_login_view.dart';
import 'package:flutter_application_1/login/suppliers_login_view.dart';
import 'package:flutter_application_1/moreUsers/constructor/constructor_home_view/constructor_home_view.dart';

import '../../common/color_extension.dart';
import '../../common_widget/round_button.dart';

import 'customer_login_view.dart';
import 'Consultan_login_view.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ClipOval(
                  child: Image.asset(
                    "assets/img/download (1).jpg",
                    // width: media.width,
                    fit: BoxFit.cover,
                    height: media.width * 0.4,
                  ),
                ),
              ),
              SizedBox(
                height: media.width * 0.1,
              ),
              Text(
                "مرحبًا بك في تطبيق مقاولات، المكان الأمثل للعثور على أفضل المقاولين لتحقيق مشاريعك بكل سهولة وجودة عالية.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: media.width * 0.1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: RoundButton(
                  title: "تسجيل دخول المستخدم",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CustomerLoginView(),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: RoundButton(
                  title: "تسجيل دخول المقاول",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ConstructorLoginView(),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: RoundButton(
                  title: "تسجيل دخول الاستشاري",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ConstructorHomeView()),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: RoundButton(
                  title: "تسجيل دخول الموردين",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SuppliersLoginView()),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
