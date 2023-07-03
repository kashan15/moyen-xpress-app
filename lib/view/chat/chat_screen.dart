// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:moyen_xpress_app/components/custom_grid_button.dart';
// import 'package:moyen_xpress_app/components/text_widget.dart';
// import 'package:moyen_xpress_app/controller/my_cart_controller.dart';
// import 'package:moyen_xpress_app/controller/profile_screen_controller.dart';
// import 'package:moyen_xpress_app/utils/color_utils.dart';
// import 'package:moyen_xpress_app/utils/image_utils.dart';
//
// import '../../components/custom_richtext.dart';
// import '../../components/custom_textfield1.dart';
// import '../../controller/edit_account_controller.dart';
// import '../../utils/font_utils.dart';
// import 'chat_controller.dart';
//
// class ChatScreen extends GetView<ChatController> {
//   ChatScreen({
//     super.key,
//   });
//
//   bool willPop = true;
//
//   final ChatController chatController = ChatController();
//
//   @override
//   Widget build(BuildContext context) {
//     double _height = MediaQuery.of(context).size.height;
//     double _width = MediaQuery.of(context).size.width;
//     controller.globalContext = context;
//     return WillPopScope(
//       onWillPop: () async {
//         return willPop;
//       },
//       child: SafeArea(
//         top: false,
//         bottom: false,
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text('Chat Screen'),
//           ),
//           body: Container(
//             color: Colors.brown,
//             child: GetBuilder<ChatController>(
//               builder: (controller1) {
//                 return ListView.builder(
//                   itemCount: controller.messageList.length,
//                   itemBuilder: (context, index) => ListTile(
//                     title: Text(controller.messageList[index]),
//                   ),
//                 );
//               },
//             ),
//           ),
//           bottomNavigationBar: BottomAppBar(
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: TextField(
//                       decoration: InputDecoration(hintText: 'Type a message...'),
//                       onSubmitted: (value) {
//                         chatController.sendMessage(value);
//                       },
//                     ),
//                   ),
//                   IconButton(
//                     icon: const Icon(Icons.send),
//                     onPressed: () {
//                       final text = chatController.textEditingController.text;
//                       if (text.isNotEmpty) {
//                         chatController.sendMessage(text);
//                         chatController.textEditingController.clear();
//                       }
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         )
//       )
//     );
//   }
//
// }


import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/utils/route_utils.dart';
import 'package:moyen_xpress_app/utils/text_styles.dart';

import '../../components/custom_textfield.dart';
import '../../components/custom_widgets.dart';
import '../../components/test_class.dart';
import '../../components/text_widget.dart';
import '../../models/chat_model.dart';
import '../../utils/color_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/string_utils.dart';
import 'chat_controller.dart';


class ChatScreen extends GetView<ChatController> {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Scaffold(
        backgroundColor: chatBg,
        resizeToAvoidBottomInset: true,
        appBar: _appBar(context),
        body: Stack(
          children: [
            // chatGroupList(),
            widgetBody(),

            //initialize loader
            controller.isChatHistoryLoading.value
                ? SizedBox(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0),
                child: Container(
                  color: Colors.black.withOpacity(0.1),
                  child: const Center(child: CircularProgressIndicator()),
                ),
              ),
            )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }

  Widget widgetBody() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          chatDatesList(),
          Divider(height: 5, color: textGreyLightColor),
          Row(
            children: [
              Expanded(
                  child: MyTextField(
                    controller: controller.sendMessageTextController,
                    // maxLines: 2,
                    label: writeMessageSUtil,
                    // hint: writeMessageSUtil,
                    textInputAction: TextInputAction.newline,
                  )),
              IconButton(
                  onPressed: controller.sendMessage,
                  icon: const Icon(
                    Icons.send,
                    color: homeBoxColor,
                  )),
            ],
          )
        ],
      ),
    );
  }

  Widget chatDatesList() {
    return Expanded(
      child: ListView.builder(
          reverse: true,
          shrinkWrap: true,
          itemCount: controller.chatGroupMap.length,
          controller: controller.chatScrollController,
          itemBuilder: (_, index) {
            return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Column(
                  children: [
                    dateTile(controller.chatGroupMap.keys
                        .elementAt(index)
                        .toString()),
                    // chatGroupList(),
                    chatListByDates(controller.chatGroupMap.values
                        .elementAt(index)
                        .toList())
                  ],
                ));
          }),
    );
  }

  Widget chatListByDates(List<ChatData> list) {
    list.sort((a, b) => b.createdAt!.compareTo(a.createdAt!));
    return ListView.builder(
        reverse: true,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: list.length,
        itemBuilder: (_, index) {
          return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: chatWidget(
                list[index].message,
                list[index].createdAt,
                // received: (index % 2 == 0) ? true : false),
                received: !(list[index].senderType.toString().toLowerCase() ==
                    "driver"), // controller.userModel.id.toString()),
              ));
        });
  }

  Widget chatWidget(msg, date, {bool received = false}) {
    return Align(
      alignment: received ? Alignment.topLeft : Alignment.topRight,
      child: Column(
        children: [
          Align(
            alignment: received ? Alignment.centerLeft : Alignment.centerRight,
            child: MyBox(
                topLeft: received ? 0 : 10,
                topRight: received ? 10 : 0,
                bottomLeft: received ? 10 : 10,
                bottomRight: received ? 10 : 10,
                padding: 10,
                maxWidth: Get.width * 0.75,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                color: received ? Colors.white : homeBoxColor,
                //Colors.grey.shade300 : customGreyColor,//customPrimaryColor/*Light*/,
                // gradientColors: received ? receivedColors : senderColors,
                shadowColor: Colors.grey,
                boxShadow: const BoxShadow(
                    color: Colors.grey, blurRadius: 3, offset: Offset(0, 1)),
                child: Column(
                  crossAxisAlignment: received
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.end,
                  children: [
                    Text(
                      msg,
                      style: TextStyle(
                          color: received ? Colors.black : textWhiteColor),
                    ),
                   SizedBox(height: sizeH(07),),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          getTime(date), //.toString(),
                          style: med8.copyWith(
                              color: received ? Colors.black : textWhiteColor),
                        ),
                        // const Text("."),
                        Icon(
                          Icons.done_all,
                          size: sizeH(10),
                          color: received ? Colors.black : textWhiteColor,
                        )
                      ],
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }

  Widget dateTile(var xyz) {
    return MyBox(
        topLeft: 10,
        topRight: 10,
        bottomLeft: 10,
        bottomRight: 10,
        padding: 10,
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        color: Colors.white,
        //Colors.grey.shade300 : customGreyColor,//customPrimaryColor/*Light*/,
        // gradientColors: received ? receivedColors : senderColors,
        // shadowColor: Colors.grey,
        // boxShadow: const BoxShadow(
        //     color: Colors.grey, blurRadius: 3, offset: Offset(0, 1)),
        child: Text(xyz == getDate(DateTime.now())
            ? "Today"
            : xyz == getDate(DateTime.now().subtract(const Duration(days: 1)))
            ? "Yesterday"
            : xyz));
  }

  PreferredSizeWidget _appBar(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return AppBar(
      elevation: 1.0,
      toolbarHeight: sizeH(60),
      iconTheme: const IconThemeData(
        color: primaryColorSwatch,
      ),
      backgroundColor: textWhiteColor,
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: sizeW(5)),
        child:
        Row(
          children: [
            IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: (){
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: _height * 0.025,
                )
            ),
            Expanded(child:
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      circleAvatar(
                          asset: ImageUtils.profile1, size: 40, shadow: false),
                      width(10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Moyen Seller",
                              style: med12.copyWith(color: textBlackColor)),
                          Text("Online",
                              style: bold8.copyWith(
                                  color: Colors.green, height: 1)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
            )
          ],
        ),

        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     iconBox(
        //         settingMenu: PopupMenuButton(
        //             onSelected: (result){
        //               if (result == 0 ){
        //                 Get.toNamed(kHomeScreen);
        //               } else if(result == 1){
        //                 Get.toNamed(kHomeScreen);
        //               } else if(result == 2){
        //                 controller.onCloseChat();
        //               }
        //             },
        //             itemBuilder: (context){
        //               return [
        //                 const PopupMenuItem(
        //                   value: 0,
        //                   child: Text('Retry'),
        //                 ),
        //                 const PopupMenuItem(
        //                   value: 1,
        //                   child: Text('Redial'),
        //                 ),
        //                 const PopupMenuItem(
        //                   value: 2,
        //                   child: Text('Close Chat'),
        //                 ),
        //               ];
        //             })
        //
        //       // PopupMenuButton<String>(
        //       //     itemBuilder: (context) {
        //       //   return [
        //       //      PopupMenuItem<String>(
        //       //       value: 0,
        //       //       child: Text("Retry"),
        //       //     ),
        //       //     const PopupMenuItem<String>(
        //       //       value: 1,
        //       //       child: Text("Redial"),
        //       //     ),
        //       //     const PopupMenuItem<String>(
        //       //       value: 2,
        //       //       child: Text("End Call"),
        //       //     ),
        //       //   ];
        //       // }, onSelected: (value) {
        //       //   if (value == 0) {
        //       //     controller.retryCall;
        //       //   } else if (value == 1) {
        //       //     controller.redialCall;
        //       //   } else if (value == 2) {
        //       //     controller.endCall;
        //       //   }
        //       // }),
        //     ),
        //     Center(
        //       child: Padding(
        //         padding: EdgeInsets.symmetric(horizontal: sizeW(30)),
        //         child: Align(
        //           alignment: Alignment.centerLeft,
        //           child:
        //           SizedBox(
        //             child: Row(
        //               children: [
        //                 circleAvatar(
        //                     asset: ImageUtils.men, size: 40, shadow: false),
        //                 width(10),
        //                 Column(
        //                   mainAxisAlignment: MainAxisAlignment.center,
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     Text("James (Agent)",
        //                         style: med12.copyWith(color: textBlackColor)),
        //                     Text("Online",
        //                         style: reg8.copyWith(
        //                             color: textBlackColor, height: 1)),
        //                   ],
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //
        //   ],
        // ),
      ),
    );
  }

  Widget iconBox({var icon, void Function()? onTap, Widget? settingMenu}) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
          width: kToolbarHeight * 0.7,
          height: kToolbarHeight * 0.7,
          // dimension: kToolbarHeight, //sizeW(10),
          child: MyBox(
            color: primaryColorSwatch.shade100,
            radius: 7,
            child: settingMenu ??
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: genericAsset(
                    asset: icon,
                    iconColor: primaryColorSwatch,
                  ),
                ),
          )), //()=> Get.back(),
    );
  }
}
