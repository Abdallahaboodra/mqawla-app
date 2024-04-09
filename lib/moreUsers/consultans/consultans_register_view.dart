import 'package:flutter/material.dart';
import 'package:flutter_application_1/moreUsers/consultans/consultans_register.dart';

class ConsultansRgisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(

        // backgroundColor: const Color.fromARGB(255, 218, 217, 215),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue,
          title: const Text('المكاتب الاستشارية',style: TextStyle(color: Colors.white),),
        ),
        body: Column(
          children: [
          const  SizedBox(height: 50,),
            Center(
              child: Image.asset(
                'assets/img/Contractor6.jpeg',
                width: 300,
                height: 300,
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width:MediaQuery.of(context).size.width/1.5,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ConsultansRegister();
                  }));
                },
                child: const Text('رؤية الحجوزات',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
