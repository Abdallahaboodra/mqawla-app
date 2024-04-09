
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/consultans/consultants_model.dart';
import 'package:flutter_application_1/consultans/previous_project_details_page.dart';

class ConsultantDetailsPage extends StatelessWidget {
  final Consultant consultant;

  const ConsultantDetailsPage({Key? key, required this.consultant})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
             iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue,
          title: Text(consultant.name,style: TextStyle(color: Colors.white),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // تحديد اتجاه النص
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        // النصف الأيسر من الشاشة
                        height:
                            MediaQuery.of(context).size.width / 2, // طول الصورة
                        child: Image.asset(
                          consultant.imagePath,
                          fit: BoxFit.cover, // تغطية كامل العنصر
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Card(
                  elevation: 4, // تغيير ارتفاع الكارد حسب الحاجة
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // تحديد الاتجاه للنصوص
                      children: [
                        Text(
                          consultant.name,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          // تحديد اتجاه النص
                        ),
                        const SizedBox(height: 10),
                        Text(
                          consultant.specialty,
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                          // تحديد اتجاه النص
                        ),
                        const SizedBox(height: 20),
                        Text(
                          consultant.description,
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'معلومات الاتصال:',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          // textDirection: TextDirection.rtl,
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          children: [
                            Text(
                              'الهاتف : ',
                              textAlign: TextAlign.right,
                              textDirection: TextDirection.rtl,
                              style:
                                  TextStyle(fontSize: 16, color: Colors.blue),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '+966 XXX XXXX',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                              textAlign: TextAlign.left,
                              textDirection: TextDirection.ltr,
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.phone,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Text(
                              ': البريد الإلكتروني',
                              textDirection: TextDirection.ltr,
                              style:
                                  TextStyle(fontSize: 16, color: Colors.blue),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                  '${consultant.name.replaceAll(' ', '').toLowerCase()}@example.com',
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.black),
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.ltr,
                                  overflow: TextOverflow.visible),
                            ),
                            const SizedBox(width: 10),
                            const Icon(
                              Icons.email,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                const Text(
                  'المشاريع السابقة:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  // textDirection: TextDirection.rtl,
                ),
                // عرض قائمة الأعمال السابقة
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: consultant.previousProjects.length,
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      elevation: 6,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: ListTile(
                        title: Text(
                            consultant.previousProjects[index].projectName),
                        subtitle:
                            Text(consultant.previousProjects[index].duration),
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                              consultant.previousProjects[index].image),
                        ),
                        onTap: () {
                          // يمكنك هنا تنفيذ إجراء معين عند النقر على العمل السابق
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PreviousProjectDetailsPage(
                                previousProject:
                                    consultant.previousProjects[index],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
                // يمكنك أيضًا إضافة المزيد من التفاصيل حول العقد أو أي معلومات إضافية هنا
              ],
            ),
          ),
        ),
      ),
    );
  }
}
