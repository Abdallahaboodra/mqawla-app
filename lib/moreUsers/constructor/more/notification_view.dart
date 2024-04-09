// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:food_delivery/common/color_extension.dart';

// import 'my_order_view.dart';

// class NotificationsView extends StatefulWidget {
//   const NotificationsView({super.key});

//   @override
//   State<NotificationsView> createState() => _NotificationsViewState();
// }

// class _NotificationsViewState extends State<NotificationsView> {
//   List notificationArr = [
//     {
//       "title": "Your orders has been picked up".tr(),
//       "time": "Now".tr(),
//     },
//     {
//       "title": "Your order has been delivered".tr(),
//       "time": "1 h ago".tr(),
//     },
//     {
//       "title": "Your orders has been picked up".tr(),
//       "time": "3 h ago".tr(),
//     },
//     {
//       "title": "Your order has been delivered".tr(),
//       "time": "5 h ago".tr(),
//     },
//     {
//       "title": "Your orders has been picked up".tr(),
//       "time": "05 Jun 2023".tr(),
//     },
//     {
//       "title": "Your order has been delivered".tr(),
//       "time": "05 Jun 2023".tr(),
//     },
//     {
//       "title": "Your orders has been picked up".tr(),
//       "time": "06 Jun 2023".tr(),
//     },
//     {
//       "title": "Your order has been delivered".tr(),
//       "time": "06 Jun 2023".tr(),
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(
//                 height: 46,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 15),
//                 child: Row(
//                   children: [
//                     IconButton(
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                       icon: Image.asset("assets/img/btn_back.png",
//                           width: 20, height: 20),
//                     ),
//                     const SizedBox(
//                       width: 8,
//                     ),
//                     Expanded(
//                       child: Text(
//                         "Notifications".tr(),
//                         style: TextStyle(
//                             color: TColor.primaryText,
//                             fontSize: 20,
//                             fontWeight: FontWeight.w800),
//                       ),
//                     ),
//                     IconButton(
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => MyOrderView(
//                                       NameOrder: '',
//                                       image: '',
//                                     )));
//                       },
//                       icon: Image.asset(
//                         "assets/img/shopping_cart.png",
//                         width: 25,
//                         height: 25,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               ListView.separated(
//                 physics: const NeverScrollableScrollPhysics(),
//                 shrinkWrap: true,
//                 padding: EdgeInsets.zero,
//                 itemCount: notificationArr.length,
//                 separatorBuilder: ((context, index) => Divider(
//                       indent: 25,
//                       endIndent: 25,
//                       color: TColor.secondaryText.withOpacity(0.4),
//                       height: 1,
//                     )),
//                 itemBuilder: ((context, index) {
//                   var cObj = notificationArr[index] as Map? ?? {};
//                   return Container(
//                     decoration: BoxDecoration(
//                         color:
//                             index % 2 == 0 ? TColor.white : TColor.textfield),
//                     padding: const EdgeInsets.symmetric(
//                         vertical: 15, horizontal: 25),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                           margin: const EdgeInsets.only(top: 4),
//                           width: 8,
//                           height: 8,
//                           decoration: BoxDecoration(
//                               color: TColor.primary,
//                               borderRadius: BorderRadius.circular(4)),
//                         ),
//                         const SizedBox(
//                           width: 15,
//                         ),
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 cObj["title".tr()].toString(),
//                                 style: TextStyle(
//                                     color: TColor.primaryText,
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.w600),
//                               ),
//                               const SizedBox(
//                                 height: 4,
//                               ),
//                               Text(
//                                 cObj["time".tr()].toString(),
//                                 style: TextStyle(
//                                     color: TColor.secondaryText,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.w500),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
//                 }),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
