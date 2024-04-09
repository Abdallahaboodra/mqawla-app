
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Contractor/user_data_provider.dart';
import 'package:flutter_application_1/consultans/user_data_provider_consultans.dart';
import 'package:flutter_application_1/home/home_page.dart';
import 'package:flutter_application_1/login/welcome_view.dart';
import 'package:flutter_application_1/moreUsers/consultans/consultans_register.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserDataProviderContractor()),
        ChangeNotifierProvider(create: (_) => UserDataProviderConsultant()),
      ],
      child: const  MaterialApp(
        home: WelcomeView(),
      ),
    );
  }
}

// 