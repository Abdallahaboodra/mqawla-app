
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/moreUsers/constructor/constructor_home_view/widgets/constructor_home_view_body.dart';
import 'package:flutter_application_1/moreUsers/constructor/suppliers_view/suppliers_view.dart';
import 'package:flutter_application_1/setting/setting_page.dart';

import '../suppliers_view/suppliers_details_dialog.dart';

class ConstructorHomeView extends StatefulWidget {
  const ConstructorHomeView({super.key});

  @override
  State<ConstructorHomeView> createState() => _ConstructorHomeViewState();
}

class _ConstructorHomeViewState extends State<ConstructorHomeView> {
  int pageIndex = 0;

  final pages = [
    ConstructorHomeViewBody(),
    // SupoliersDetailsDialog(
    //   imageUrl: 'assets/img/porcelain.jpg',
    //   name: 'mmmm',
    // ),
    SuppliersView(),
    ProfileView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 80,
        decoration: const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  icon: pageIndex == 0
                      ? Image.asset(
                          'assets/img/Icon awesome-home.png',
                          color: Colors.white,
                          width: 50,
                          height: 30,
                        )
                      : Image.asset(
                          'assets/img/Icon awesome-home.png',
                          color: const Color(0xff3D3D6F),
                          width: 50,
                          height: 30,
                        )),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                icon: pageIndex == 1
                    ? const Icon(
                        Icons.construction,
                        color: Colors.white,
                        size: 35,
                      )
                    : const Icon(
                        Icons.construction,
                        size: 35,
                        color: Color(0xff3D3D6F),
                      ),
              ),
              IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 2;
                    });
                  },
                  icon: pageIndex == 2
                      ? Image.asset(
                          'assets/img/tab_profile.png',
                          color: Colors.white,
                          width: 50,
                          height: 30,
                        )
                      : Image.asset(
                          'assets/img/tab_profile.png',
                          color: const Color(0xff3D3D6F),
                          width: 50,
                          height: 30,
                        )),
              // IconButton(
              //   enableFeedback: false,
              //   onPressed: () {
              //     setState(() {
              //       pageIndex = 3;
              //     });
              //   },
              //   icon: pageIndex == 3
              //       ? const Icon(
              //           Icons.settings,
              //           color: Colors.white,
              //           size: 35,
              //         )
              //       : const Icon(
              //           Icons.settings,
              //           size: 35,
              //           color: Color(0xff3D3D6F),
              //         ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
