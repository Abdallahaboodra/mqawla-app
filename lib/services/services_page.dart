import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Contractor/user_data_provider.dart';
import 'package:provider/provider.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('صفحة المقاول'),
        ),
        body: Consumer<UserDataProviderContractor>(
          builder: (context, userDataProvider, child) {
            List<UserDataContractor> usersData = userDataProvider.usersData;
            return ListView.builder(
              itemCount: usersData.length,
              itemBuilder: (context, index) {
                UserDataContractor userData = usersData[index];
                return Card(
                  elevation: 4,
                  color: Color.fromARGB(255, 249, 252, 253),
                  margin: const EdgeInsets.all(20),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: const Icon(
                            Icons.person,
                            color: Colors.deepPurple,
                            size: 30,
                          ),
                          title: Text(
                            userData.name ?? 'بيانات غير متوفرة',
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.phone,
                            color: Colors.deepPurple,
                            size: 30,
                          ),
                          title: Text(
                            userData.phoneNumber ?? 'بيانات غير متوفرة',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.location_on,
                            color: Colors.deepPurple,
                            size: 30,
                          ),
                          title: Text(
                            userData.location ?? 'بيانات غير متوفرة',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.work,
                            color: Colors.deepPurple,
                            size: 30,
                          ),
                          title: Text(
                            userData.jobType ?? 'بيانات غير متوفرة',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.details,
                            color: Colors.deepPurple,
                            size: 30,
                          ),
                          title: Text(
                            userData.constructionDetails ?? 'بيانات غير متوفرة',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: () {
                                  userDataProvider.removeUser(userData);
                                }, icon: const Icon(Icons.delete,size: 30,color: Colors.red,))
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}


  
