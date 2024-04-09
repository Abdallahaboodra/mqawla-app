import 'package:flutter/material.dart';
import 'package:flutter_application_1/consultans/consultants_model.dart';
import 'package:flutter_application_1/consultans/user_data_provider_consultans.dart';
import 'package:provider/provider.dart';

class PreviousProjectDetailsPage extends StatelessWidget {
  final PreviousProject previousProject;

  PreviousProjectDetailsPage({required this.previousProject});

  final Set<String> buildingTypes = {
    'شقة',
    'مبني اداري',
    'فيلا',
    'مصنع',
    'عمارة'
  };
  String? selectedBuildingType;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, // تحديد اتجاه الصفحة
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue,
          title: Text(
            previousProject.projectName,
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  previousProject.image,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20),
                Card(
                  elevation: 4,
                  margin: const EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          previousProject.projectName,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          textDirection: TextDirection.rtl,
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            const Icon(
                              Icons.access_time,
                              size: 25,
                              color: Colors.blue,
                            ), // أيقونة للمدة
                            const SizedBox(width: 8),
                            Text(
                              'المدة: ${previousProject.duration}',
                              style: const TextStyle(
                                  fontSize: 18, color: Colors.blue),
                              textDirection: TextDirection.rtl,
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Text(
                          previousProject.details,
                          style: const TextStyle(fontSize: 16),
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(minimumSize: Size(300, 60)),
                    onPressed: () {
                      _showBookingDialog(context);
                    },
                    child: const Text(
                      'حجز موعد',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showBookingDialog(BuildContext context) {
    String name = '';
    String phoneNumber = '';

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Directionality(
              textDirection: TextDirection.rtl, // تحديد اتجاه الصفحة
              child: AlertDialog(
                title: const Text('حجز, موعد'),
                content: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                        decoration: InputDecoration(
                          labelText: 'الاسم',
                          errorText: name.isEmpty ? 'الرجاء إدخال الاسم' : null,
                        ),
                      ),
                      TextField(
                        onChanged: (value) {
                          phoneNumber = value;
                          setState(() {});
                        },
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: 'رقم الهاتف',
                          errorText: phoneNumber.isEmpty
                              ? 'الرجاء إدخال رقم الهاتف'
                              : null,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      DropdownButtonFormField<String>(
                        dropdownColor: const Color.fromARGB(255, 196, 211, 226),
                        value: selectedBuildingType,
                        onChanged: (value) {
                          selectedBuildingType = value;
                          setState(
                              () {}); // Update the state when the value changes
                        },
                        items: buildingTypes.map((type) {
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
                        decoration: const InputDecoration(
                          labelText: 'نوع المبنى',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('إلغاء'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (name.isNotEmpty &&
                          phoneNumber.isNotEmpty &&
                          selectedBuildingType != null) {
                        final UserDataProviderConsultant userDataProvider =
                            Provider.of<UserDataProviderConsultant>(context,
                                listen: false);
                        UserDataConsultant userData = UserDataConsultant(
                          jobType: selectedBuildingType,
                          name: name,
                          phoneNumber: phoneNumber,
                        );
                        userDataProvider.addUser(userData);
                        Navigator.of(context).pop();
                        _showConfirmationDialog(context);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('الرجاء ملء جميع الحقول'),
                          ),
                        );
                      }
                    },
                    child: const Text('تأكيد الحجز'),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Directionality(
          textDirection: TextDirection.rtl, // تحديد اتجاه الصفحة
          child: AlertDialog(
            title: const Text('تأكيد الحجز'),
            content: const Text('تم حجز موعدك بنجاح.'),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('موافق'),
              ),
            ],
          ),
        );
      },
    );
  }


  CustomTextFormField( String title,
    IconData icon,
    Function(String?) onChanged,
    TextInputType keyboardType, {
    String? Function(String?)? validator,
   
  }){
    return TextFormField(
                onChanged: onChanged,
                validator: validator,
                keyboardType: keyboardType,
                decoration: InputDecoration(
                  hintText: 'أدخل $title',
                ),
              );
  }
}
