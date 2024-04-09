import 'package:flutter/material.dart';
import 'package:flutter_application_1/Contractor/user_data_provider.dart';
import 'package:provider/provider.dart';

class DetailsModelPage extends StatefulWidget {
  @override
  _DetailsModelPageState createState() => _DetailsModelPageState();
}

class _DetailsModelPageState extends State<DetailsModelPage> {
  final _formKey = GlobalKey<FormState>();
  String? location;
  String? constructionDetails;
  String? name;
  String? phoneNumber;
  String? jobType;
  final saudiPhoneNumberRegex = RegExp(r'^966\d{9}$');
  final List<String> jobTypes = ['ترميم', 'تشطيب', 'إنشاء', 'تطوير', 'هدم'];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue,
          title: const Text(
            'تفاصيل الحجز ',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildFormField(
                        'الاسم',
                        Icons.person,
                        (value) => name = value,
                        TextInputType.name,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'يرجى إدخال الاسم';
                          }
                          return null;
                        },
                      ),
                      _buildFormField(
                        'رقم الهاتف',
                        Icons.phone,
                        (value) => phoneNumber = value,
                        TextInputType.phone,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'يرجى إدخال رقم الهاتف للتواصل';
                          }
                          if (!saudiPhoneNumberRegex.hasMatch(value)) {
                            return 'يرجى إدخال رقم هاتف سعودي صالح';
                          }
                          return null;
                        },
                      ),
                      _buildFormField(
                        'الموقع المراد الانشاء فيه',
                        Icons.location_pin,
                        (value) => location = value,
                        TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'يرجى إدخال الموقع المراد الانشاء فيه';
                          }
                          return null;
                        },
                      ),
                      _buildFormField(
                        'نوع العمل',
                        Icons.work,
                        (value) => jobType = value,
                        TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'يرجى تحديد نوع العمل';
                          }
                          return null;
                        },
                        dropDown: true,
                      ),
                      _buildFormField(
                        'تفاصيل اضافيه عن العمل',
                        Icons.description,
                        (value) => constructionDetails = value,
                        TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'يرجى إدخال التفاصيل الاضافية';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20.0),
                      ElevatedButton(
                        onPressed: _submitForm,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        child: const Text(
                          'تأكيد البيانات',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final UserDataProviderContractor userDataProvider =
          Provider.of<UserDataProviderContractor>(context, listen: false);
      UserDataContractor userData = UserDataContractor(
        location: location!,
        jobType: jobType!,
        constructionDetails: constructionDetails!,
        name: name!,
        phoneNumber: phoneNumber!,
      );
      userDataProvider.addUser(userData);

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('تم تسجيل البيانات بنجاح'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('حسنا'),
              ),
            ],
          );
        },
      );
      // ظظظظظ
    }
  }

  Widget _buildFormField(
    String title,
    IconData icon,
    Function(String?) onChanged,
    TextInputType keyboardType, {
    String? Function(String?)? validator,
    bool dropDown = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle(title, icon),
        dropDown
            ? DropdownButtonFormField<String>(
                dropdownColor: Color.fromARGB(255, 206, 209, 209),
                value: jobType,
                onChanged: onChanged as void Function(String?)?,
                validator: validator,
                items: jobTypes.map((String type) {
                  return DropdownMenuItem<String>(
                    value: type,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          type,
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                  );
                }).toList(),
                decoration: InputDecoration(
                  hintText: 'اختر $title',
                ),
              )
            : TextFormField(
                onChanged: onChanged,
                validator: validator,
                keyboardType: keyboardType,
                decoration: InputDecoration(
                  hintText: 'أدخل $title',
                ),
              ),
        const SizedBox(height: 20.0),
      ],
    );
  }

  Widget _buildSectionTitle(String title, IconData icon) {
    return Row(
      children: [
        Icon(icon, color: Colors.blue),
        const SizedBox(width: 10.0),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
