import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../components/custom_navbar.dart';
import '../components/test_class.dart';
import '../controller/dashboard_tab_controller.dart';
import '../controller/tab_controller.dart';
import '../utils/color_utils.dart';

class DashboardTab extends GetView<DashboardTabController>{
  const DashboardTab({super.key});

  @override
  Widget build(BuildContext context) {
    bool keyboardIsOpened = MediaQuery.of(context).viewInsets.bottom != 0.0;
    return WillPopScope(
      onWillPop: () => controller.onDashboardBack(),
      child: Scaffold(
          key: controller.scaffoldKey,
          backgroundColor: customWhiteColor,
          appBar: navbar(
              title: controller.tabTitleText.value.tr,
              notification: GestureDetector(
                onTap: controller.onNotificationTap,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.notifications_outlined,
                        color: homeBoxColor,
                      ),
                    ),
                    Positioned.directional(
                      textDirection: TextDirection.ltr,
                      end: 0,
                      top: 5,
                      child: Text(
                          controller.dashboardController.notificationCount.value
                              .toString(),
                          // style: reg12.copyWith(
                          //   color: customPrimaryColor,
                          // )
                      ),
                    ),
                  ],
                ),
              ),
              scaffoldKey: controller.scaffoldKey),
          //endDrawer: const NewCustomDrawer(),
          bottomNavigationBar: SafeArea(
            left: false,
            right: false,
            top: false,
            child: CustomBottomTabBar(
              blockHeight: controller.blockHeight,
              blockWidth: controller.blockWidth,
            ),
          ),
          body: SafeArea(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: controller.tabController,
              children: controller.myTabs,
            ),
          ),
          floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,
          floatingActionButton: keyboardIsOpened
              ? null
              : FloatingActionButton(
            heroTag: null,
            onPressed: () => controller.gotoPageIndex(2),
            backgroundColor: homeBoxColor,
            child: const Icon(
              Icons.home,
              size: 20,
            )
          ),
        ),

    );
  }
}