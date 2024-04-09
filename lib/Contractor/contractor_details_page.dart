
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Contractor/contractor_model.dart';
import 'package:flutter_application_1/Contractor/details_model_page%20.dart';
import 'package:flutter_application_1/constant.dart';


class ContractorDetailsPage extends StatelessWidget {
  final Contractor contractor;

  ContractorDetailsPage({required this.contractor});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
             iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue,
          title: Text(contractor.name,style: TextStyle(color: Colors.white),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage(contractor.imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                _buildCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSectionTitle('التخصص', Icons.work),
                      _buildText(contractor.specialty),
                      const SizedBox(height: 20.0),
                      _buildSectionTitle('الوصف', Icons.description),
                      _buildText(contractor.description),
                      const SizedBox(height: 20.0),
                      _buildSectionTitle('الخصومات', Icons.local_offer),
                      _buildText(contractor.discounts),
                    ],
                  ),
                ),
                _buildPaymentMethodCard(
                    contractor.paymentMethod, contractor.discounts, context),
                const SizedBox(height: 20.0),
                _buildSectionTitle('خطوات العمل', Icons.timeline),
                _buildStepsList(contractor.steps),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStepsList(List<String> steps) {
    String? selectedStep;

    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: selectedStep != null
                      ? Colors.black
                      : kPrimaryColor, // تغيير لون الحدود بعد ظهور القائمة
                ),
              ),
              child: DropdownButtonFormField<String>(
                dropdownColor: Colors.cyan[100],

                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(50),
                ),
                decoration: const InputDecoration(
                  hintText: 'الاطلاع علي الخطوات',
                  border: InputBorder.none, // إزالة الحدود الافتراضية للحقل
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                  filled: true, // تغيير الخلفية لتكون ملونة
                ),

                style: const TextStyle(
                    fontSize: 18.0, color: Colors.blueAccent), // تغيير حجم الخط
                iconSize: 30.0, // تغيير حجم الأيقونة
                value: selectedStep,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedStep = newValue;
                  });
                },
                items: steps.map<DropdownMenuItem<String>>((String step) {
                  return DropdownMenuItem<String>(
                    enabled: false,
                    // alignment: Alignment.bottomRight,
                    value: step,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(step),
                        const SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                          child: Text(
                            (steps.indexOf(step) + 1).toString(),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        );
      },
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
              fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.blue),
        ),
      ],
    );
  }

  Widget _buildText(String text) {
    return Text(
      text,
      style: const TextStyle(fontSize: 16.0, color: Colors.black),
    );
  }

  Widget _buildStepsListt(List<String> steps) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: steps
          .map((step) => ListTile(
                leading: CircleAvatar(
                    child: Text((steps.indexOf(step) + 1).toString())),
                title: Text(step),
              ))
          .toList(),
    );
  }

  Widget _buildCard({required Widget child}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 4,
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: child,
      ),
    );
  }

  Widget _buildPaymentMethodCard(
      String title, String method, BuildContext context) {
    return Card(
      elevation: 4, // تغيير ارتفاع الكارد حسب الحاجة
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle(title, Icons.payment),
            const SizedBox(height: 10),
            _buildText(method),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsModelPage(),
                    ),
                  );
                  // يتم تحديد المسار للانتقال إلى طريقة الدفع هنا
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // لون الزر
                ),
                child: const Text(
                  'تفاصيل الحجز  ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
