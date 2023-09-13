import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/components/custom_grid_button.dart';
import 'package:moyen_xpress_app/components/new_custom_dialogue.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/controller/my_cart_controller.dart';
import 'package:moyen_xpress_app/controller/profile_screen_controller.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';

import '../../components/custom_appbar.dart';
import '../../components/custom_dialog.dart';
import '../../components/custom_richtext.dart';
import '../../components/custom_textfield1.dart';
import '../../controller/edit_account_controller.dart';
import '../../utils/font_utils.dart';

class EditAccountScreen extends GetView<ProfileController> {
  EditAccountScreen({
    super.key,
  });

  bool willPop = true;


  // final EditAccountController imagePickerController = EditAccountController();
  final ProfileController imagePickerController = ProfileController();

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    controller.globalContext = context;
    return WillPopScope(
      onWillPop: () async {
        return willPop;
      },
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: backgroundColor,
            appBar: CustomAppbar1(
              heading: 'Profile',
              color: backgroundColor,
            ),
            body: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      SizedBox(height: _height * 0.02,),
                      Stack(
                        children: [
                          Obx(() {
                            if (imagePickerController.imagePath.value.isNotEmpty) {
                              return GestureDetector(
                                onTap: (){
                                  // showModalBottomSheet(
                                  //     context: context,
                                  //     shape: RoundedRectangleBorder(
                                  //         borderRadius: BorderRadius.vertical(
                                  //             top: Radius.circular(
                                  //                 _width * 0.06
                                  //             ))),
                                  //     builder: (BuildContext context) {
                                  //       return customModalSheet(context);
                                  //     });
                                  Get.dialog(
                                      CustomDialogSimple(
                                        title: 'Work In Progress',
                                        description: 'currently we are working on that feature',
                                        okTap: false,
                                      )
                                  );
                                },
                                child: CircleAvatar(
                                  radius: _width * 0.125,
                                  backgroundColor: customGreyColor,
                                  backgroundImage: FileImage(File(imagePickerController.imagePath.value)),
                                ),
                              );
                            } else {
                              return
                                GestureDetector(
                                  onTap: (){
                                    // showModalBottomSheet(
                                    //     context: context,
                                    //     shape: RoundedRectangleBorder(
                                    //         borderRadius: BorderRadius.vertical(
                                    //             top: Radius.circular(
                                    //                 _width * 0.06))),
                                    //     builder: (BuildContext context) {
                                    //       return customModalSheet(context);
                                    //     });
                                    Get.dialog(
                                        CustomDialogSimple(
                                          title: 'Work In Progress',
                                          description: 'currently we are working on that feature',
                                          okTap: false,
                                        )
                                    );
                                  },
                                  child: CircleAvatar(
                                    radius: Get.height * 0.065,
                                    backgroundColor: customGreyColor,
                                    backgroundImage: const AssetImage(
                                      ImageUtils.profile,
                                    ),
                                  ),
                                );
                            }
                          }),

                          Positioned(
                            top: _height * 0.09,
                            left: _width * 0.190,
                            child: GestureDetector(
                              onTap: () {
                                // showModalBottomSheet(
                                //     context: context,
                                //     shape: RoundedRectangleBorder(
                                //         borderRadius: BorderRadius.vertical(
                                //             top: Radius.circular(
                                //                 _width * 0.06))),
                                //     builder: (BuildContext context) {
                                //       return customModalSheet(context);
                                //     });
                              },
                              child: CircleAvatar(
                                radius: _width * 0.04,
                                backgroundColor: homeBoxColor,
                                child: Center(
                                  child: Icon(
                                    Icons.camera_alt_outlined,
                                    size: _height * 0.025,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: _height * 0.03,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: _width * 0.04),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: TextWidget(
                            textTitle: 'User Information',
                            fontFamily: poppinsMedium,
                            color: Colors.black,
                            fontSize: _height * 0.02,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _height * 0.02,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: _width * 0.05),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: TextWidget(
                            textTitle: 'Full Name',
                            fontFamily: poppinsMedium,
                            color: Colors.black,
                            fontSize: _height * 0.015,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _height * 0.005,
                      ),
                      Container(
                          height: _height * 0.06,
                          width: _width * 1,
                          margin:
                              EdgeInsets.symmetric(horizontal: _width * 0.05),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(_width * 0.02),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    blurRadius: 2,
                                    spreadRadius: 2,
                                    offset: Offset(0, 0))
                              ]
                          ),
                          child: CustomTextField1(
                            // hintText: 'John Smith',
                            // hintText: controller.profileDataModel.value.name ?? 'Nothing',
                            hintText: controller.profileDataModel.value.name ?? 'Nothing',
                            hintFontSize: _height * 0.015,
                            fontSize: _height * 0.0175,
                            fontFamily: poppinsMedium,
                            // suffixIcon: Image.asset(ImageUtils.searchIcon),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: _height * 0.0175,
                                horizontal: _width * 0.025),
                            controller: controller.nameController,
                            onChanged: (value) {
                              print(value);
                            },
                          )),
                      SizedBox(
                        height: _height * 0.015,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: _width * 0.05),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: TextWidget(
                            textTitle: 'Email',
                            fontFamily: poppinsMedium,
                            color: Colors.black,
                            fontSize: _height * 0.015,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _height * 0.005,
                      ),
                      Container(
                          height: _height * 0.06,
                          width: _width * 1,
                          margin:
                              EdgeInsets.symmetric(horizontal: _width * 0.05),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(_width * 0.02),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    blurRadius: 2,
                                    spreadRadius: 2,
                                    offset: Offset(0, 0))
                              ]),
                          child: CustomTextField1(
                            // hintText: 'johnsmith@gmail.com',
                            hintText: controller.profileDataModel.value.email ?? 'Nothing',
                            hintFontSize: _height * 0.015,
                            fontSize: _height * 0.0175,
                            fontFamily: poppinsMedium,
                            // suffixIcon: Image.asset(ImageUtils.searchIcon),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: _height * 0.0175,
                                horizontal: _width * 0.025),
                            controller: controller.emailController,
                            onChanged: (value) {
                              print(value);
                            },
                          )),

                      /// Gender
                      // SizedBox(
                      //   height: _height * 0.015,
                      // ),
                      // Padding(
                      //   padding:
                      //       EdgeInsets.symmetric(horizontal: _width * 0.05),
                      //   child: Align(
                      //     alignment: Alignment.topLeft,
                      //     child: TextWidget(
                      //       textTitle: 'Gender',
                      //       fontFamily: poppinsMedium,
                      //       color: Colors.black,
                      //       fontSize: _height * 0.015,
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: _height * 0.005,
                      // ),
                      // Container(
                      //     height: _height * 0.06,
                      //     width: _width * 1,
                      //     margin:
                      //         EdgeInsets.symmetric(horizontal: _width * 0.05),
                      //     decoration: BoxDecoration(
                      //         color: Colors.white,
                      //         borderRadius:
                      //             BorderRadius.circular(_width * 0.02),
                      //         boxShadow: [
                      //           BoxShadow(
                      //               color: Colors.grey.withOpacity(0.2),
                      //               blurRadius: 2,
                      //               spreadRadius: 2,
                      //               offset: Offset(0, 0))
                      //         ]),
                      //     child: CustomTextField1(
                      //       hintText: 'Female',
                      //       hintFontSize: _height * 0.015,
                      //       fontSize: _height * 0.0175,
                      //       fontFamily: poppinsMedium,
                      //       // suffixIcon: Image.asset(ImageUtils.searchIcon),
                      //       contentPadding: EdgeInsets.symmetric(
                      //           vertical: _height * 0.0175,
                      //           horizontal: _width * 0.025),
                      //       controller: controller.genderController,
                      //       onChanged: (value) {
                      //         print(value);
                      //       },
                      //     )),
                      // SizedBox(
                      //   height: _height * 0.015,
                      // ),

                      SizedBox(
                        height: _height * 0.015,
                      ),
                      Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: _width * 0.05),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: TextWidget(
                            textTitle: 'Old Password',
                            fontFamily: poppinsMedium,
                            color: Colors.black,
                            fontSize: _height * 0.015,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _height * 0.005,
                      ),
                      Container(
                          height: _height * 0.06,
                          width: _width * 1,
                          margin:
                          EdgeInsets.symmetric(horizontal: _width * 0.05),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.circular(_width * 0.02),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    blurRadius: 2,
                                    spreadRadius: 2,
                                    offset: Offset(0, 0))
                              ]),
                          child: CustomTextField1(
                            hintText: controller.oldPasswordController.text.isEmpty ?
                                "123456":
                                controller.oldPasswordController.text,
                            hintFontSize: _height * 0.015,
                            fontSize: _height * 0.0175,
                            fontFamily: poppinsMedium,
                            // suffixIcon: Image.asset(ImageUtils.searchIcon),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: _height * 0.0175,
                                horizontal: _width * 0.025),
                            controller: controller.oldPasswordController,
                            onChanged: (value) {
                              print(value);
                            },
                          )),
                      SizedBox(
                        height: _height * 0.015,
                      ),

                      Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: _width * 0.05),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: TextWidget(
                            textTitle: 'New Password',
                            fontFamily: poppinsMedium,
                            color: Colors.black,
                            fontSize: _height * 0.015,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _height * 0.005,
                      ),
                      Container(
                          height: _height * 0.06,
                          width: _width * 1,
                          margin:
                          EdgeInsets.symmetric(horizontal: _width * 0.05),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.circular(_width * 0.02),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    blurRadius: 2,
                                    spreadRadius: 2,
                                    offset: Offset(0, 0))
                              ]),
                          child: CustomTextField1(
                            hintText: controller.newPasswordController.text.isEmpty ?
                            "":
                            controller.newPasswordController.text,
                            hintFontSize: _height * 0.015,
                            fontSize: _height * 0.0175,
                            fontFamily: poppinsMedium,
                            // suffixIcon: Image.asset(ImageUtils.searchIcon),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: _height * 0.0175,
                                horizontal: _width * 0.025),
                            controller: controller.newPasswordController,
                            onChanged: (value) {
                              print(value);
                            },
                          )),
                      SizedBox(
                        height: _height * 0.015,
                      ),

                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: _width * 0.05),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: TextWidget(
                             textTitle: 'Phone',
                            fontFamily: poppinsMedium,
                            color: Colors.black,
                            fontSize: _height * 0.015,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _height * 0.005,
                      ),
                      Container(
                          height: _height * 0.06,
                          width: _width * 1,
                          margin:
                              EdgeInsets.symmetric(horizontal: _width * 0.05),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(_width * 0.02),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    blurRadius: 2,
                                    spreadRadius: 2,
                                    offset: Offset(0, 0))
                              ]),
                          child: CustomTextField1(
                            // hintText: '1234567989',
                            hintText: controller.profileDataModel.value.phone ?? '123456789',
                            hintFontSize: _height * 0.015,
                            fontSize: _height * 0.0175,
                            fontFamily: poppinsMedium,
                            // suffixIcon: Image.asset(ImageUtils.searchIcon),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: _height * 0.0175,
                                horizontal: _width * 0.025),
                            controller: controller.phoneController,
                            onChanged: (value) {
                              print(value);
                            },
                          )),

                      SizedBox(
                        height: _height * 0.015,
                      ),
                      Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: _width * 0.05),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: TextWidget(
                            textTitle: 'Address',
                            fontFamily: poppinsMedium,
                            color: Colors.black,
                            fontSize: _height * 0.015,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _height * 0.005,
                      ),
                      Container(
                          height: _height * 0.06,
                          width: _width * 1,
                          margin:
                          EdgeInsets.symmetric(horizontal: _width * 0.05),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.circular(_width * 0.02),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    blurRadius: 2,
                                    spreadRadius: 2,
                                    offset: Offset(0, 0))
                              ]),
                          child: CustomTextField1(
                            // hintText: 'Times Square, New York City, USA',
                            hintText: controller.profileDataModel.value.address ?? 'Empty',
                            hintFontSize: _height * 0.015,
                            fontSize: _height * 0.0175,
                            fontFamily: poppinsMedium,
                            // suffixIcon: Image.asset(ImageUtils.searchIcon),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: _height * 0.0175,
                                horizontal: _width * 0.025),
                            controller: controller.addressController,
                            onChanged: (value) {
                              print(value);
                            },
                          )),
                      SizedBox(height: _height * 0.02,),
                      const Spacer(),

                      /// Obx
                      Obx(
                        () => controller.isProfileLoading.value ?
                            const CircularProgressIndicator(
                              color: homeBoxColor,
                            ):
                            CustomButton(
                          isSelected: false,
                          margin: EdgeInsets.symmetric(horizontal: _width * 0.06),
                          padding:
                              EdgeInsets.symmetric(
                                  vertical: _height * 0.02
                              ),
                          onTap: (){
                            controller.updateProfile();
                          },
                          title: 'Save',
                          fontFamily: poppinsMedium,
                          fontSize: _height * 0.0175,
                          textColor: Colors.white,
                          borderRadius: _width * 0.025,
                          color: homeBoxColor,
                        ),
                      ),

                      // CustomButton(
                      //   isSelected: false,
                      //   margin: EdgeInsets.symmetric(horizontal: _width * 0.06),
                      //   padding:
                      //   EdgeInsets.symmetric(
                      //       vertical: _height * 0.02
                      //   ),
                      //   onTap: ()async{
                      //     // Get.dialog(
                      //     //     const Center(
                      //     //         child: CircularProgressIndicator(
                      //     //           color: homeBoxColor,
                      //     //         )
                      //     //     ));
                      //     //
                      //     // // Simulate a delay (e.g., 2 seconds)
                      //     // await Future.delayed(const Duration(seconds: 2));
                      //     // // Close the progress indicator
                      //     // Get.back();
                      //     // Get.dialog(
                      //     //     CustomDialogSimple(
                      //     //       title: 'Done',
                      //     //       description: 'profile changes has been saved',
                      //     //       okTap: true,
                      //     //     )
                      //     // );
                      //
                      //     controller.updateProfile();
                      //   },
                      //   title: 'Save',
                      //   fontFamily: poppinsMedium,
                      //   fontSize: _height * 0.0175,
                      //   textColor: Colors.white,
                      //   borderRadius: _width * 0.025,
                      //   color: homeBoxColor,
                      // ),
                      SizedBox(
                        height: _height * 0.05,
                      ),
                    ],
                  ),
                )
              ],
            )
        ),
      ),
    );
  }

  /// Custom Modal BottomSheet
  Widget customModalSheet(BuildContext context) {
    controller.globalContext = context;
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return SizedBox(
        height: _height * 0.25,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              isSelected: false,
              margin: EdgeInsets.symmetric(horizontal: _width * 0.06),
              padding: EdgeInsets.symmetric(vertical: _height * 0.015),
              onTap: () => imagePickerController.pickImageFromCamera(),
              title: 'Camera',
              fontFamily: poppinsMedium,
              fontSize: _height * 0.0175,
              textColor: Colors.white,
              borderRadius: _width * 0.025,
              color: homeBoxColor,
            ),
            SizedBox(
              height: _height * 0.02,
            ),
            CustomButton(
              isSelected: false,
              margin: EdgeInsets.symmetric(horizontal: _width * 0.06),
              padding: EdgeInsets.symmetric(vertical: _height * 0.015),
              onTap: () => imagePickerController.pickImageFromGallery(),
              title: 'Gallery',
              fontFamily: poppinsMedium,
              fontSize: _height * 0.0175,
              textColor: Colors.white,
              borderRadius: _width * 0.025,
              color: homeBoxColor,
            ),
          ],
        ));
  }
}
