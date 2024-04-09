
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/widgets/home_view_body.dart';
import 'package:flutter_application_1/notifications/notification_page.dart';
import 'package:flutter_application_1/services/services_page.dart';

import '../constant.dart';
import '../setting/setting_page.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int pageIndex = 0;

  final pages = [
    HomeViewBody(),
    const ServicesView(),
    const NotificationView(),
    const ProfileView(),
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
                        Icons.design_services_outlined,
                        color: Colors.white,
                        size: 35,
                      )
                    : const Icon(
                        Icons.design_services_outlined,
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
                    ? const Icon(
                        Icons.notification_add_outlined,
                        color: Colors.white,
                        size: 35,
                      )
                    : const Icon(
                        Icons.notification_add_outlined,
                        size: 35,
                        color: Color(0xff3D3D6F),
                      ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                icon: pageIndex == 3
                    ? const Icon(
                        Icons.account_circle,
                        color: Colors.white,
                        size: 40,
                      )
                    : const Icon(
                        Icons.account_circle,
                        size: 35,
                        color: Color(0xff3D3D6F),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
