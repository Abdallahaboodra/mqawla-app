
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/extension.dart';
import 'package:flutter_application_1/common/globs.dart';
import 'package:flutter_application_1/constant.dart';

class ConstructorOrderDetailsCard extends StatefulWidget {
  final String title;
  final String description;
  final String location;
  final String imageUrl;
  final String jobType;
  final Function(bool accepted)? onAcceptChanged;

  const ConstructorOrderDetailsCard({
    Key? key,
    required this.title,
    required this.description,
    required this.location,
    required this.imageUrl,
    required this.jobType,
    this.onAcceptChanged,
  }) : super(key: key);

  @override
  State<ConstructorOrderDetailsCard> createState() =>
      _ConstructorOrderDetailsCardState();
}

class _ConstructorOrderDetailsCardState
    extends State<ConstructorOrderDetailsCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              image: DecorationImage(
                image: AssetImage(widget.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.blue),
                    SizedBox(width: 5),
                    Text(
                      widget.location,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  widget.description,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 5),
                Text(
                  "نوع العمل: ${widget.jobType}",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // mdShowAlert(Globs.appName, MSG.acceptedBulding, () {});
                        setState(() {});
                        if (widget.onAcceptChanged != null) {
                          widget.onAcceptChanged!(true);
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(kPrimaryColor),
                      ),
                      child: Text(
                        "قبول",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // mdShowAlert(Globs.appName, MSG.deniedBulding, () {});
                        setState(() {});
                        if (widget.onAcceptChanged != null) {
                          widget.onAcceptChanged!(false);
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(kPrimaryColor),
                      ),
                      child: Text(
                        "رفض",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// class RequestDetailsCard extends StatelessWidget {
//   final String title;
//   final String description;
//   final String price;
//   final String status;
//   final String imageURL;
//   final String additionalInfo;

//   const RequestDetailsCard({
//     Key? key,
//     required this.title,
//     required this.description,
//     required this.price,
//     required this.status,
//     required this.imageURL,
//     required this.additionalInfo,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 4,
//       margin: const EdgeInsets.all(16),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(16),
//         child: Stack(
//           children: [
//             Image.asset(
//               imageURL,
//               fit: BoxFit.cover,
//               height: 200,
//             ),
//             Positioned(
//               bottom: 16,
//               left: 16,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: Theme.of(context).textTheme.headline6!.copyWith(
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                   ),
//                   const SizedBox(height: 8),
//                   Text(
//                     description,
//                     style: Theme.of(context).textTheme.bodyText1!.copyWith(
//                           color: Colors.white,
//                         ),
//                   ),
//                 ],
//               ),
//             ),
//             Positioned(
//               top: 16,
//               right: 16,
//               child: Row(
//                 children: [
//                   Text(
//                     "السعر:",
//                     style: Theme.of(context).textTheme.bodyText1!.copyWith(
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                   ),
//                   Text(
//                     price,
//                     style: Theme.of(context).textTheme.bodyText1!.copyWith(
//                           color: Colors.white,
//                         ),
//                   ),
//                 ],
//               ),
//             ),
//             Positioned(
//               bottom: 16,
//               right: 16,
//               child: Row(
//                 children: [
//                   Text(
//                     "الحالة:",
//                     style: Theme.of(context).textTheme.bodyText1!.copyWith(
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                   ),
//                   Text(
//                     status,
//                     style: Theme.of(context).textTheme.bodyText1!.copyWith(
//                           color: Colors.white,
//                         ),
//                   ),
//                 ],
//               ),
//             ),
//             Positioned(
//               bottom: 0,
//               left: 0,
//               right: 0,
//               child: Container(
//                 color: Colors.black.withOpacity(0.5),
//                 padding: const EdgeInsets.all(16),
//                 child: Text(
//                   additionalInfo,
//                   style: Theme.of(context).textTheme.bodyText1!.copyWith(
//                         color: Colors.white,
//                       ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// class RequestDetailsCard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Card(
//           child: Padding(
//             padding: EdgeInsets.all(16),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     Image.asset(
//                       "assets/img/house.png",
//                       height: 100,
//                       width: 100,
//                       fit: BoxFit.cover,
//                     ),
//                     SizedBox(width: 16),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "اسم المستخدم: John Doe",
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text(
//                           "عنوان المستخدم: 123 Main Street",
//                           style: TextStyle(fontSize: 14),
//                         ),
//                         Text(
//                           "رقم هاتف المستخدم: (123) 456-7890",
//                           style: TextStyle(fontSize: 14),
//                         ),
//                         Text(
//                           "تفاصيل طلب المستخدم: أريد بناء منزل من 3 غرف نوم و 2 حمامات",
//                           style: TextStyle(fontSize: 14),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 16),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {
//                         // إظهار رسالة تأكيد قبول الطلب
//                         Fluttertoast.showToast(
//                           msg: "تم قبول طلب بناء منزل للمستخدم John Doe بنجاح.",
//                           toastLength: Toast.LENGTH_SHORT,
//                           gravity: ToastGravity.BOTTOM,
//                           backgroundColor: Colors.green,
//                           textColor: Colors.white,
//                           fontSize: 16.0,
//                         );
//                       },
//                       child: Text("قبول"),
//                     ),
//                     ElevatedButton(
//                       onPressed: () {
//                         // إظهار رسالة تأكيد رفض الطلب
//                         Fluttertoast.showToast(
//                           msg: "تم رفض طلب بناء منزل للمستخدم John Doe بنجاح.",
//                           toastLength: Toast.LENGTH_SHORT,
//                           gravity: ToastGravity.BOTTOM,
//                           backgroundColor: Colors.red,
//                           textColor: Colors.white,
//                           fontSize: 16.0,
//                         );
//                       },
//                       child: Text("رفض"),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
