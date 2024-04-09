import 'package:flutter/material.dart';
import 'package:flutter_application_1/moreUsers/admin/consult_view_admin.dart';

import 'package:flutter_application_1/moreUsers/admin/contractor_view_admin.dart';

class AdminFirstView extends StatelessWidget {
  const AdminFirstView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue,
          title: const Text(' المسؤول', style: TextStyle(color: Colors.white)),
          centerTitle: true,
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),

            Center(
              child: Image.asset(
                'assets/img/10.jpeg',
                width: 300,
                height: 300,
              ),
            ),
            const SizedBox(height: 40),

            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ConsulttViewAdmin();
                  // return Text("data");
                }));
              },
              child: const Text('الاطلاع على طلبات الاستشاري',
                  style: TextStyle(color: Colors.white, fontSize: 18)),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ContractorViewAdmin();
                }));
              },
              child: const Text('الاطلاع على طلبات المقاول',
                  style: TextStyle(color: Colors.white, fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}





// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('اسم المسؤول'),
//           centerTitle: true,
//         ),
//         body: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   // اجراءات اطلاع تسجيلات الاستشاري
//                 },
//                 child: Text('الاطلاع على تسجيلات الاستشاري'),
//               ),
//               SizedBox(width: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   // اجراءات اطلاع تسجيلات المقاول
//                 },
//                 child: Text('الاطلاع على تسجيلات المقاول'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
