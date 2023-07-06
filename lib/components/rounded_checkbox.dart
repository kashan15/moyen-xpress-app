// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class RoundedCheckBox extends StatelessWidget {
//   final RxList<bool> isCheckedList;
//
//   RoundedCheckBox(
//       this.isCheckedList
//       );
//
//   @override
//   Widget build(BuildContext context) {
//     return Obx(() {
//       return InkWell(
//         onTap: () => isCheckedList[0].toggle(),
//         borderRadius: BorderRadius.circular(20.0),
//         child: Container(
//           width: 20.0,
//           height: 20.0,
//           decoration: BoxDecoration(
//             color: isCheckedList[0] ? Colors.blue : Colors.transparent,
//             borderRadius: BorderRadius.circular(20.0),
//             border: Border.all(
//               color: isCheckedList[0] ? Colors.blue : Colors.grey,
//               width: 2.0,
//             ),
//           ),
//           child: isCheckedList[0]
//               ? Icon(
//             Icons.check,
//             color: Colors.white,
//             size: 16.0,
//           )
//               : null,
//         ),
//       );
//     });
//   }
// }
//
// class MyListView extends StatelessWidget {
//   final RxList<bool> isCheckedList = <bool>[].obs;
//
//   @override
//   Widget build(BuildContext context) {
//     // Add some initial values to the isCheckedList
//     isCheckedList.addAll([false, false, false]);
//
//     return ListView.builder(
//       itemCount: isCheckedList.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           leading: RoundedCheckBox(isCheckedList),
//           title: Text('Item $index'),
//         );
//       },
//     );
//   }
// }