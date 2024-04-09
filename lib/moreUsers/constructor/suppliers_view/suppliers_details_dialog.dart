
import 'package:flutter/material.dart';



class SupoliersDetailsDialog extends StatelessWidget {
  final String name;
  // final String price;
  // final String quality;
  // final String type;
  // final String additionalDetails;
  // final String companyDetails;
  final String imageUrl;

  const SupoliersDetailsDialog({
    required this.name,
    // required this.price,
    // required this.quality,
    // required this.type,
    // required this.additionalDetails,
    // required this.companyDetails,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(name),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: 150,
            height: 150,
          ),
          SizedBox(height: 16),
          Text(
            'تفاصيل المورد:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          // Text('سعر: $price'),
          // Text('جودة: $quality'),
          // Text('نوع: $type'),
          // Text('تفاصيل إضافية: $additionalDetails'),
          SizedBox(height: 16),
          Text(
            'تفاصيل الشركة المسؤولة:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          // Text(companyDetails),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('إغلاق'),
        ),
      ],
    );
  }
}

// class SuppliersView extends StatelessWidget {
//   final List<Resource> buildingResources = [
//     Resource(
//       name: 'طوب',
//       imageUrl: 'assets/images/birck.jpg',
//       //   price: '50 دولار',
//       //   quality: 'عالية',
//       //   type: 'بناء',
//       //   additionalDetails: 'مورد موثوق منه لسنوات',
//       //   companyDetails: 'اسم الشركة: ABC Building Supplies\nالعنوان: مدينة البناء\nالتقييم: 4.5 نجوم\nرقم الهاتف: 123456789',
//     ),
//     // Add more resources here
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: kPrimaryColor,
//         title: Text('موارد البناء'),
//       ),
//       body: GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
//           crossAxisSpacing: 8.0,
//           mainAxisSpacing: 8.0,
//         ),
//         itemCount: buildingResources.length,
//         itemBuilder: (context, index) {
//           return GestureDetector(
//             onTap: () {
//               showDialog(
//                 context: context,
//                 builder: (context) => SupoliersDetailsDialog(
//                   name: buildingResources[index].name,
//                   // price: buildingResources[index].price,
//                   // quality: buildingResources[index].quality,
//                   // type: buildingResources[index].type,
//                   // additionalDetails: buildingResources[index].additionalDetails,
//                   // companyDetails: buildingResources[index].companyDetails,
//                   imageUrl: buildingResources[index].imageUrl,
//                 ),
//               );
//             },
//             child: ResourceCard(resource: buildingResources[index]),
//           );
//         },
//       ),
//     );
//   }
// }
