import 'package:flutter/material.dart';
import 'package:flutter_application_1/consultans/user_data_provider_consultans.dart';
import 'package:provider/provider.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('صفحة الاستشاري'),
        ),
        body: Consumer<UserDataProviderConsultant>(
          builder: (context, userDataProvider, child) {
            List<UserDataConsultant> usersData = userDataProvider.usersData;
            if (usersData.isEmpty) {
              return Center(
                child: Text(
                  'لا يوجد حجوزات',
                  style: TextStyle(fontSize: 20),
                ),
              );
            }
            return ListView.builder(
              itemCount: usersData.length,
              itemBuilder: (context, index) {
                UserDataConsultant userData = usersData[index];
                return Column(
                  children: [
                    Card(
                      elevation: 4,
                      color: Color.fromARGB(255, 206, 230, 230),
                      margin: const EdgeInsets.all(15),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.person,
                                  color: Colors.blue,
                                  size: 30,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  userData.name ??
                                      'بيانات غير متوفرة',
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Icon(
                                  Icons.phone,
                                  color: Colors.blue,
                                  size: 30,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  userData.phoneNumber ??
                                      'بيانات غير متوفرة',
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Icon(
                                  Icons.business_sharp,
                                  color: Colors.blue,
                                  size: 30,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  userData.jobType ??
                                      'بيانات غير متوفرة',
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    // حذف البيانات المسجلة عن طريق مزود البيانات
                                    userDataProvider.removeUser(userData);
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
