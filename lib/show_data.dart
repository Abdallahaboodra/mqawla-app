
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Contractor/user_data_provider.dart';
import 'package:provider/provider.dart';

class ContractorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('صفحة المقاول'),
      ),
      body: Consumer<UserDataProviderContractor>(
        builder: (context, userDataProvider, child) {
          List<UserDataContractor> usersData = userDataProvider.usersData;
          return ListView.builder(
            itemCount: usersData.length,
            itemBuilder: (context, index) {
              UserDataContractor userData = usersData[index];
              return Card(
                child: ListTile(
                  title: Text(userData.name ?? 'بيانات غير متوفرة'),
                  subtitle: Text(userData.phoneNumber ?? 'بيانات غير متوفرة'),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
