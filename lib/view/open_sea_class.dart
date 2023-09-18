// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:moyen_xpress_app/controller/open_sea_controller.dart';
// import 'package:moyen_xpress_app/utils/route_utils.dart';
//
// class OpenSea extends GetView<OpenseaController>{
//   OpenSea({
//     super.key
// });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text('opensea Api')),
//         body: Obx(
//               () => controller.isLoading.value
//               ? Center(
//             child: CircularProgressIndicator(),
//           )
//               : ListView.builder(
//               itemCount: controller.openseaModel?.homeData?.length ?? 0,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                     title: Text(
//                         controller.openseaModel?.homeData![index].name ??
//                             'no name'
//                     ),
//                     subtitle: Text(controller
//                         .openseaModel?.homeData![index].tags ??
//                         'no description'),
//                     onTap: () {
//                       Get.toNamed(kLoginScreen);
//                     }
//                     );
//               }),
//         ));
//   }
//
// }