// import 'package:construction_app/constant.dart';
// import 'package:flutter/material.dart';

// class Resource {
//   final String name;
//   final String imageUrl;

//   Resource({
//     required this.name,
//     required this.imageUrl,
//   });
// }

// class SuppliersView extends StatelessWidget {
//   final List<Resource> buildingResources = [
// Resource(
//   name: 'طوب',
//   imageUrl: 'assets/img/birck.jpg',
// ),
// Resource(
//   name: 'إسمنت',
//   imageUrl: 'assets/img/concrete.jpg',
// ),
// Resource(
//   name: 'مواد طلاء',
//   imageUrl: 'assets/img/paint.jpg',
// ),
// Resource(
//   name: 'حديد التسليح',
//   imageUrl: 'assets/img/steel.jpg',
// ),
// Resource(
//   name: 'زجاج',
//   imageUrl: 'assets/img/glass.jpg',
// ),
// Resource(
//   name: 'خرسانة جاهزة',
//   imageUrl: 'assets/img/lightweightconcrete.jpg',
// ),
// Resource(
//   name: 'بلاط السيراميك',
//   imageUrl: 'assets/img/porcelain.jpg',
// ),

// Resource(
//   name: 'أسقف جبسية',
//   imageUrl: 'assets/img/gibs.jpg',
// ),
// // Resource(
// //   name: 'طلاء داخلي',
// //   imageUrl: 'assets/img/interior_paint.jpg',
// // ),
// // Resource(
// //   name: 'طلاء خارجي',
// //   imageUrl: 'assets/img/exterior_paint.jpg',
// // ),
// // Resource(
// //   name: 'أدوات كهربائية',
// //   imageUrl: 'assets/img/electrical_tools.jpg',
// // ),
//     // You can add more resources here
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
//           crossAxisCount: MediaQuery.of(context).size.width > 600
//               ? 4
//               : 2, // Adjust the number of columns based on screen width
//           crossAxisSpacing: 8.0,
//           mainAxisSpacing: 8.0,
//         ),
//         itemCount: buildingResources.length,
//         itemBuilder: (context, index) {
//           return ResourceCard(resource: buildingResources[index]);
//         },
//       ),
//     );
//   }
// }

// class ResourceCard extends StatelessWidget {
//   final Resource resource;

//   const ResourceCard({required this.resource});

//   @override
//   Widget build(BuildContext context) {
//     double imgize = MediaQuery.of(context).size.width > 600
//         ? 150.0
//         : 100.0; // Adjust image size based on screen width

//     return Card(
//       margin: EdgeInsets.all(8.0),
//       child: Padding(
//         padding: EdgeInsets.all(8.0), // Padding for the card
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           mainAxisAlignment: MainAxisAlignment
//               .spaceBetween, // Place the text below the image inside the card
//           children: [
//             Flexible(
//               child: Image.asset(
//                 resource.imageUrl,
//                 width: imgize,
//                 height: imgize,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             SizedBox(height: 8.0), // Add space between the image and the text
//             Text(
//               resource.name,
//               textAlign: TextAlign.center, // Center the text
//               style: TextStyle(
//                 fontSize: 16.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:construction_app/constant.dart';
// import 'package:flutter/material.dart';

// class Resource {
//   final String name;
//   final String imageUrl;
//   final List<Supplier> suppliers;

//   Resource({
//     required this.name,
//     required this.imageUrl,
//     required this.suppliers,
//   });
// }

// class Supplier {
//   final String name;
//   final String contactDetails;
//   final String phoneNumber;
//   final String address;

//   Supplier({
//     required this.name,
//     required this.contactDetails,
//     required this.phoneNumber,
//     required this.address,
//   });
// }

// class SuppliersView extends StatelessWidget {
//   final List<Resource> buildingResources = [
//     Resource(
//       name: 'طوب',
//       imageUrl: 'assets/img/birck.jpg',
//       suppliers: [
//         Supplier(
//           name: 'Brick Factory',
//           contactDetails: 'Contact details of Brick Factory for Bricks',
//           phoneNumber: '+123456789',
//           address: '123 Street, Brick City, Country',
//         ),
//         Supplier(
//           name: 'Masonry Co.',
//           contactDetails: 'Contact details of Masonry Co. for Bricks',
//           phoneNumber: '+987654321',
//           address: '456 Road, Brick Town, Country',
//         ),
//       ],
//     ),
//     Resource(
//       name: 'إسمنت',
//       imageUrl: 'assets/img/concrete.jpg',
//       suppliers: [
//         Supplier(
//           name: 'Cement Masters',
//           contactDetails: 'Contact details of Cement Masters for Cement',
//           phoneNumber: '+111222333',
//           address: '789 Avenue, Cement City, Country',
//         ),
//         Supplier(
//           name: 'Concrete Solutions',
//           contactDetails: 'Contact details of Concrete Solutions for Cement',
//           phoneNumber: '+444555666',
//           address: '012 Boulevard, Cement Town, Country',
//         ),
//       ],
//     ),
//     Resource(
//       name: 'مواد طلاء',
//       imageUrl: 'assets/img/paint.jpg',
//       suppliers: [
//         Supplier(
//           name: 'Paint Masters',
//           contactDetails: 'Contact details of Paint Masters for Paint',
//           phoneNumber: '+123456789',
//           address: '123 Street, Paint City, Country',
//         ),
//         Supplier(
//           name: 'Color Coatings',
//           contactDetails: 'Contact details of Color Coatings for Paint',
//           phoneNumber: '+987654321',
//           address: '456 Road, Paint Town, Country',
//         ),
//       ],
//     ),
//     Resource(
//       name: 'حديد التسليح',
//       imageUrl: 'assets/img/steel.jpg',
//       suppliers: [
//         Supplier(
//           name: 'Steel Supply Co.',
//           contactDetails: 'Contact details of Steel Supply Co. for Steel',
//           phoneNumber: '+111222333',
//           address: '789 Avenue, Steel City, Country',
//         ),
//         Supplier(
//           name: 'Iron Industries',
//           contactDetails: 'Contact details of Iron Industries for Steel',
//           phoneNumber: '+444555666',
//           address: '012 Boulevard, Iron Town, Country',
//         ),
//       ],
//     ),
//     Resource(
//       name: 'زجاج',
//       imageUrl: 'assets/img/glass.jpg',
//       suppliers: [
//         Supplier(
//           name: 'Glass World',
//           contactDetails: 'Contact details of Glass World for Glass',
//           phoneNumber: '+777888999',
//           address: '456 Road, Glass City, Country',
//         ),
//         Supplier(
//           name: 'Crystal Clear',
//           contactDetails: 'Contact details of Crystal Clear for Glass',
//           phoneNumber: '+333444555',
//           address: '789 Avenue, Glass Town, Country',
//         ),
//       ],
//     ),
//     Resource(
//       name: 'خرسانة جاهزة',
//       imageUrl: 'assets/img/lightweightconcrete.jpg',
//       suppliers: [
//         Supplier(
//           name: 'Concrete Creations',
//           contactDetails:
//               'Contact details of Concrete Creations for Lightweight Concrete',
//           phoneNumber: '+999000111',
//           address: '123 Street, Concrete City, Country',
//         ),
//         Supplier(
//           name: 'Ready-Mix Ltd.',
//           contactDetails:
//               'Contact details of Ready-Mix Ltd. for Lightweight Concrete',
//           phoneNumber: '+666777888',
//           address: '456 Road, Concrete Town, Country',
//         ),
//       ],
//     ),
//     Resource(
//       name: 'بلاط السيراميك',
//       imageUrl: 'assets/img/porcelain.jpg',
//       suppliers: [
//         Supplier(
//           name: 'Ceramic Creations',
//           contactDetails: 'Contact details of Ceramic Creations for Porcelain',
//           phoneNumber: '+222333444',
//           address: '789 Avenue, Porcelain City, Country',
//         ),
//         Supplier(
//           name: 'Porcelain Plus',
//           contactDetails: 'Contact details of Porcelain Plus for Porcelain',
//           phoneNumber: '+555666777',
//           address: '012 Boulevard, Porcelain Town, Country',
//         ),
//       ],
//     ),
//     Resource(
//       name: 'أسقف جبسية',
//       imageUrl: 'assets/img/gibs.jpg',
//       suppliers: [
//         Supplier(
//           name: 'Gypsum Supplies',
//           contactDetails: 'Contact details of Gypsum Supplies for Gypsum',
//           phoneNumber: '+888999000',
//           address: '456 Road, Gypsum City, Country',
//         ),
//         Supplier(
//           name: 'Plaster Pros',
//           contactDetails: 'Contact details of Plaster Pros for Gypsum',
//           phoneNumber: '+111222333',
//           address: '789 Avenue, Gypsum Town, Country',
//         ),
//       ],
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
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => SupplierListScreen(
//                     resourceName: buildingResources[index].name,
//                     resourceImageUrl: buildingResources[index].imageUrl,
//                     suppliers: buildingResources[index].suppliers,
//                   ),
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

// class ResourceCard extends StatelessWidget {
//   final Resource resource;

//   const ResourceCard({required this.resource});

//   @override
//   Widget build(BuildContext context) {
//     double imgize = MediaQuery.of(context).size.width > 600 ? 150.0 : 100.0;

//     return Card(
//       margin: EdgeInsets.all(8.0),
//       child: Padding(
//         padding: EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Flexible(
//               child: Image.asset(
//                 resource.imageUrl,
//                 width: imgize,
//                 height: imgize,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             SizedBox(height: 8.0),
//             Text(
//               resource.name,
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 16.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SupplierListScreen extends StatelessWidget {
//   final String resourceName;
//   final String resourceImageUrl;
//   final List<Supplier> suppliers;

//   const SupplierListScreen({
//     required this.resourceName,
//     required this.resourceImageUrl,
//     required this.suppliers,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: kPrimaryColor,
//         title: Text('موردين $resourceName'),
//       ),
//       body: ListView.builder(
//         itemCount: suppliers.length,
//         itemBuilder: (context, index) {
//           return Card(
//             margin: EdgeInsets.all(8.0),
//             child: ListTile(
//               leading: CircleAvatar(
//                 backgroundImage: AssetImage(resourceImageUrl),
//               ),
//               title: Text(suppliers[index].name),
//               subtitle: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       Icon(Icons.phone),
//                       SizedBox(width: 8.0),
//                       Text(suppliers[index].phoneNumber),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Icon(Icons.location_on),
//                       SizedBox(width: 8.0),
//                       Text(suppliers[index].address),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/moreUsers/constructor/more/item_details_view.dart';



class Resource {
  final String name;
  final String imageUrl;
  final List<Supplier> suppliers;

  Resource({
    required this.name,
    required this.imageUrl,
    required this.suppliers,
  });
}

class Supplier {
  final String name;
  final String contactDetails;
  final String phoneNumber;
  final String address;
  final String description;
  final String imageUrl;
  final List<ResourceType> resourceTypes;

  Supplier({
    required this.name,
    required this.contactDetails,
    required this.phoneNumber,
    required this.address,
    required this.description,
    required this.imageUrl,
    required this.resourceTypes,
  });
}

class ResourceType {
  final String name;
  final double price;

  ResourceType({
    required this.name,
    required this.price,
  });
}

class SuppliersView extends StatelessWidget {
  final List<Resource> buildingResources = [
    Resource(
      name: 'طوب',
      imageUrl: 'assets/img/birck.jpg',
      suppliers: [
        Supplier(
          name: 'مصنع الطوب الأحمر',
          contactDetails: 'تفاصيل الاتصال لمصنع الطوب الأحمر',
          phoneNumber: '+123456789',
          address: '123 شارع، مدينة الطوب، البلد',
          description: 'مصنع ينتج طوباً أحمر',
          imageUrl: 'assets/img/factorybrick2.jpg',
          resourceTypes: [
            ResourceType(name: 'طوب أحمر', price: 20.0),
            ResourceType(name: 'طوب أبيض', price: 25.0),
          ],
        ),
        Supplier(
          name: 'شركة مقاولات الطوب',
          contactDetails: 'تفاصيل الاتصال لشركة مقاولات الطوب',
          phoneNumber: '+987654321',
          address: '456 طريق، مدينة الطوب، البلد',
          description: 'شركة تقوم بتركيب وتوريد الطوب',
          imageUrl: 'assets/img/factorybrick.jpg',
          resourceTypes: [
            ResourceType(name: 'طوب أحمر', price: 22.0),
            ResourceType(name: 'طوب أبيض', price: 27.0),
          ],
        ),
      ],
    ),
    Resource(
      name: 'إسمنت',
      imageUrl: 'assets/img/concrete.jpg',
      suppliers: [
        Supplier(
          name: 'شركة إسمنت الأمل',
          contactDetails: 'تفاصيل الاتصال لشركة إسمنت الأمل',
          phoneNumber: '+111222333',
          address: '789 شارع، مدينة الإسمنت، البلد',
          description: 'شركة تقوم بإنتاج الإسمنت',
          imageUrl: 'assets/img/concretefactory2.jpg',
          resourceTypes: [
            ResourceType(name: 'إسمنت عادي', price: 50.0),
            ResourceType(name: 'إسمنت مقاوم', price: 60.0),
            ResourceType(name: 'إسمنت أبيض', price: 70.0),
            ResourceType(name: 'إسمنت أحمر', price: 55.0),
            ResourceType(name: 'إسمنت أصفر', price: 65.0),
            ResourceType(name: 'إسمنت أسود', price: 75.0),
          ],
        ),
        Supplier(
          name: 'شركة إسمنت المستقبل',
          contactDetails: 'تفاصيل الاتصال لشركة إسمنت المستقبل',
          phoneNumber: '+444555666',
          address: '012 شارع، مدينة الإسمنت، البلد',
          description: 'شركة متخصصة في تصدير الإسمنت',
          imageUrl: 'assets/img/concretefactory.jpg',
          resourceTypes: [
            ResourceType(name: 'إسمنت عادي', price: 55.0),
            ResourceType(name: 'إسمنت مقاوم', price: 65.0),
            ResourceType(name: 'إسمنت أبيض', price: 75.0),
            ResourceType(name: 'إسمنت السويدي', price: 60.0),
            ResourceType(name: 'إسمنت الممتاز', price: 70.0),
            ResourceType(name: 'إسمنت أسود', price: 80.0),
          ],
        ),
      ],
    ),
    // Add more resources here
    Resource(
      name: 'مواد طلاء',
      imageUrl: 'assets/img/paint.jpg',
      suppliers: [
        Supplier(
          name: 'شركة الطلاء المتميزة',
          contactDetails: 'تفاصيل الاتصال لشركة الطلاء المتميزة',
          phoneNumber: '+123456789',
          address: '456 طريق، مدينة الطلاء، البلد',
          description: 'شركة تقدم مواد طلاء عالية الجودة',
          imageUrl: 'assets/img/paintfactory.webp',
          resourceTypes: [
            ResourceType(name: 'طلاء داخلي', price: 30.0),
            ResourceType(name: 'طلاء خارجي', price: 35.0),
          ],
        ),
        Supplier(
          name: 'متجر مواد الطلاء',
          contactDetails: 'تفاصيل الاتصال لمتجر مواد الطلاء',
          phoneNumber: '+987654321',
          address: '789 شارع، مدينة الطلاء، البلد',
          description: 'متجر يقدم مجموعة متنوعة من مواد الطلاء',
          imageUrl: 'assets/img/paintfactory2.webp',
          resourceTypes: [
            ResourceType(name: 'طلاء داخلي', price: 25.0),
            ResourceType(name: 'طلاء خارجي', price: 30.0),
          ],
        ),
      ],
    ),
    Resource(
      name: 'حديد التسليح',
      imageUrl: 'assets/img/steel.jpg',
      suppliers: [
        Supplier(
          name: 'مصنع حديد التسليح المتقدم',
          contactDetails: 'تفاصيل الاتصال لمصنع حديد التسليح المتقدم',
          phoneNumber: '+111222333',
          address: '012 شارع، مدينة الحديد، البلد',
          description: 'مصنع ينتج حديد التسليح عالي الجودة',
          imageUrl: 'assets/img/factorysteel.jpg',
          resourceTypes: [
            ResourceType(name: 'حديد 8 مم', price: 10.0),
            ResourceType(name: 'حديد 10 مم', price: 15.0),
          ],
        ),
        Supplier(
          name: 'محل حديد التسليح',
          contactDetails: 'تفاصيل الاتصال لمحل حديد التسليح',
          phoneNumber: '+444555666',
          address: '456 طريق، مدينة الحديد، البلد',
          description: 'محل يقدم تشكيلة واسعة من حديد التسليح',
          imageUrl: 'assets/img/factorysteel2.jpg',
          resourceTypes: [
            ResourceType(name: 'حديد 8 مم', price: 12.0),
            ResourceType(name: 'حديد 10 مم', price: 17.0),
          ],
        ),
      ],
    ),
    Resource(
      name: 'زجاج',
      imageUrl: 'assets/img/glass.jpg',
      suppliers: [
        Supplier(
          name: 'مصنع الزجاج المتقدم',
          contactDetails: 'تفاصيل الاتصال لمصنع الزجاج المتقدم',
          phoneNumber: '+123456789',
          address: '789 شارع، مدينة الزجاج، البلد',
          description: 'مصنع ينتج زجاج عالي الجودة',
          imageUrl: 'assets/img/factoryglass.jpg',
          resourceTypes: [
            ResourceType(name: 'زجاج شفاف', price: 40.0),
            ResourceType(name: 'زجاج ملون', price: 45.0),
          ],
        ),
        Supplier(
          name: 'محل زجاج',
          contactDetails: 'تفاصيل الاتصال لمحل زجاج',
          phoneNumber: '+987654321',
          address: '012 شارع، مدينة الزجاج، البلد',
          description: 'محل يقدم مجموعة متنوعة من الزجاج',
          imageUrl: 'assets/img/factoryglass2.jpg',
          resourceTypes: [
            ResourceType(name: 'زجاج شفاف', price: 35.0),
            ResourceType(name: 'زجاج ملون', price: 40.0),
          ],
        ),
      ],
    ),
    Resource(
      name: 'خرسانة جاهزة',
      imageUrl: 'assets/img/lightweightconcrete.jpg',
      suppliers: [
        Supplier(
          name: 'مصنع الخرسانة المتقدم',
          contactDetails: 'تفاصيل الاتصال لمصنع الخرسانة المتقدم',
          phoneNumber: '+111222333',
          address: '789 شارع، مدينة الخرسانة، البلد',
          description: 'مصنع ينتج خرسانة جاهزة عالية الجودة',
          imageUrl: 'assets/img/factoryweight.jpg',
          resourceTypes: [
            ResourceType(name: 'خرسانة عادية', price: 70.0),
            ResourceType(name: 'خرسانة خفيفة', price: 80.0),
          ],
        ),
        Supplier(
          name: 'محل خرسانة جاهزة',
          contactDetails: 'تفاصيل الاتصال لمحل خرسانة جاهزة',
          phoneNumber: '+444555666',
          address: '012 شارع، مدينة الخرسانة، البلد',
          description: 'محل يقدم خرسانة جاهزة بمختلف الأحجام',
          imageUrl: 'assets/img/factoryweight2.jpg',
          resourceTypes: [
            ResourceType(name: 'خرسانة عادية', price: 65.0),
            ResourceType(name: 'خرسانة خفيفة', price: 75.0),
          ],
        ),
      ],
    ),
    Resource(
      name: 'بلاط السيراميك',
      imageUrl: 'assets/img/porcelain.jpg',
      suppliers: [
        Supplier(
          name: 'شركة البلاط المتميزة',
          contactDetails: 'تفاصيل الاتصال لشركة البلاط المتميزة',
          phoneNumber: '+123456789',
          address: '789 شارع، مدينة البلاط، البلد',
          description: 'شركة تقدم بلاط سيراميك عالي الجودة',
          imageUrl: 'assets/img/factoryceramic.jpg',
          resourceTypes: [
            ResourceType(name: 'بلاط سيراميك داخلي', price: 25.0),
            ResourceType(name: 'بلاط سيراميك خارجي', price: 30.0),
          ],
        ),
        Supplier(
          name: 'محل بلاط سيراميك',
          contactDetails: 'تفاصيل الاتصال لمحل بلاط سيراميك',
          phoneNumber: '+987654321',
          address: '012 شارع، مدينة البلاط، البلد',
          description: 'محل يقدم تشكيلة واسعة من بلاط السيراميك',
          imageUrl: 'assets/img/factoryceramic2.jpg',
          resourceTypes: [
            ResourceType(name: 'بلاط سيراميك داخلي', price: 20.0),
            ResourceType(name: 'بلاط سيراميك خارجي', price: 25.0),
          ],
        ),
      ],
    ),
    Resource(
      name: 'أسقف جبسية',
      imageUrl: 'assets/img/gibs.jpg',
      suppliers: [
        Supplier(
          name: 'شركة الجبس المتميزة',
          contactDetails: 'تفاصيل الاتصال لشركة الجبس المتميزة',
          phoneNumber: '+123456789',
          address: '789 شارع، مدينة الجبس، البلد',
          description: 'شركة تقدم أسقف جبسية عالية الجودة',
          imageUrl: 'assets/img/factorygibs.jpg',
          resourceTypes: [
            ResourceType(name: 'أسقف جبسية داخلية', price: 40.0),
            ResourceType(name: 'أسقف جبسية خارجية', price: 45.0),
          ],
        ),
        Supplier(
          name: 'محل أسقف جبسية',
          contactDetails: 'تفاصيل الاتصال لمحل أسقف جبسية',
          phoneNumber: '+987654321',
          address: '012 شارع، مدينة الجبس، البلد',
          description: 'محل يقدم تشكيلة واسعة من الأسقف الجبسية',
          imageUrl: 'assets/img/factorygibs2.jpg',
          resourceTypes: [
            ResourceType(name: 'أسقف جبسية داخلية', price: 35.0),
            ResourceType(name: 'أسقف جبسية خارجية', price: 40.0),
          ],
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('موارد البناء'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: buildingResources.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SupplierDetailScreen(
                    supplier: buildingResources[index],
                  ),
                ),
              );
            },
            child: ResourceCard(resource: buildingResources[index]),
          );
        },
      ),
    );
  }
}

class ResourceCard extends StatelessWidget {
  final Resource resource;

  const ResourceCard({required this.resource});

  @override
  Widget build(BuildContext context) {
    double imgize = MediaQuery.of(context).size.width > 600 ? 150.0 : 100.0;

    return Card(
      margin: EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SupplierDetailScreen(
                supplier: resource,
              ),
            ),
          );
        },
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Image.asset(
                  resource.imageUrl,
                  width: imgize,
                  height: imgize,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                resource.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SupplierDetailScreen extends StatelessWidget {
  final Resource supplier;

  SupplierDetailScreen({required this.supplier});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تفاصيل المورد'),
      ),
      body: ListView.builder(
        itemCount: supplier.suppliers.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResourceTypeScreen(
                    resourceType: supplier.suppliers[index],
                    resourceImage: supplier.suppliers[index].imageUrl,
                  ),
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.all(8.0),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(
                      supplier.suppliers[index].imageUrl,
                      width: double.infinity,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      supplier.suppliers[index].name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      supplier.suppliers[index].description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(width: 8.0),
                        Text(supplier.suppliers[index].address),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      children: [
                        Icon(Icons.phone),
                        SizedBox(width: 8.0),
                        Text(supplier.suppliers[index].phoneNumber),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ResourceTypeScreen extends StatelessWidget {
  final Supplier resourceType;
  final String resourceImage;

  ResourceTypeScreen({required this.resourceType, required this.resourceImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تفاصيل المورد'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: resourceType.resourceTypes.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Image.asset(
                        resourceImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      resourceType.resourceTypes[index].name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'السعر: ${resourceType.resourceTypes[index].price}',
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 8.0),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ItemDetailsView(
                              location: resourceType.address,
                              description: resourceType.description,
                              foodSalary:
                                  resourceType.resourceTypes[index].price,
                              foodImage: resourceType.imageUrl,
                              foodName: resourceType.name,
                            );
                          },
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kPrimaryColor, // تغيير لون الزر
                      ),
                      child: Text(
                        'إضافة إلى السلة',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
