import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/controller/navbar_controller.dart';
import 'package:moyen_xpress_app/view/home/home_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

/// Custom Tab Bar
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/components/test_class.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';

import '../controller/dashboard_tab_controller.dart';
import '../controller/tab_controller.dart';


BuildContext? testContext;
class CustomNavBar extends GetView<NavBarController>{
  CustomNavBar({super.key});

  @override
  Widget build(BuildContext context){
    controller.globalContext = context;

    return
      Scaffold(
        appBar: AppBar(
          title: const Text("Sample Project"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: ElevatedButton(
                child: const Text("Custom widget example"),
                onPressed: () => PersistentNavBarNavigator.pushNewScreen(
                  context,
                  screen: HomeScreen(image1: '')
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                child: const Text("Built-in styles example"),
                onPressed: () => PersistentNavBarNavigator.pushNewScreen(
                  context,
                  screen: ProvidedStylesExample(
                    menuScreenContext: context,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }
}


class ProvidedStylesExample extends StatefulWidget {
  const ProvidedStylesExample({
    final Key? key,
    required this.menuScreenContext
  })
      : super(key: key);
  final BuildContext menuScreenContext;

  @override
  _ProvidedStylesExampleState createState() => _ProvidedStylesExampleState();
}

class _ProvidedStylesExampleState extends State<ProvidedStylesExample> {
  late PersistentTabController _controller;
  late bool _hideNavBar;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController();
    _hideNavBar = false;
  }

  List<Widget> _buildScreens() => [
    HomeScreen(image1: ''),
    HomeScreen(image1: ''),
    HomeScreen(image1: ''),
    HomeScreen(image1: ''),
    HomeScreen(image1: ''),
  ];

  List<PersistentBottomNavBarItem> _navBarsItems() => [
    PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: "Home",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        inactiveColorSecondary: Colors.purple),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.search),
      title: "Search",
      activeColorPrimary: Colors.teal,
      inactiveColorPrimary: Colors.grey,

    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.add),
      title: "Add",
      activeColorPrimary: Colors.blueAccent,
      inactiveColorPrimary: Colors.grey,

    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.message),
      title: "Messages",
      activeColorPrimary: Colors.deepOrange,
      inactiveColorPrimary: Colors.grey,

    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.settings),
      title: "Settings",
      activeColorPrimary: Colors.indigo,
      inactiveColorPrimary: Colors.grey,

    ),
  ];

  @override
  Widget build(final BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text("Navigation Bar Demo")),
    drawer: Drawer(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text("This is the Drawer"),
          ],
        ),
      ),
    ),
    body: PersistentTabView(
      context,
      //handleAndroidBackButtonPress: false,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      resizeToAvoidBottomInset: true,
      navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
          ? 0.0
          : kBottomNavigationBarHeight,
      bottomScreenMargin: 0,

      // onWillPop: (final context) async {
      //   await showDialog(
      //     context: context!,
      //     useSafeArea: true,
      //     builder: (final context) => Container(
      //       height: 50,
      //       width: 50,
      //       color: Colors.white,
      //       child: ElevatedButton(
      //         child: const Text("Close"),
      //         onPressed: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //     ),
      //   );
      //   return true;
      // },

      selectedTabScreenContext: (final context) {
        testContext = context;
      },
      backgroundColor: Colors.black,
      hideNavigationBar: _hideNavBar,
      decoration: const NavBarDecoration(colorBehindNavBar: Colors.indigo),
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 400),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
      ),
      navBarStyle: NavBarStyle
          .style15, // Choose the nav bar style with this property
    ),
  );
}




class CustomBottomTabBar extends GetView<DashboardTabController> {
  const CustomBottomTabBar(
      {super.key, required this.blockHeight, required this.blockWidth});

  final double blockHeight;
  final double blockWidth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: blockHeight * 7,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10.0),
            topLeft: Radius.circular(10.0),
          ),
          child: BottomAppBar(
            child: Theme(
              data: ThemeData().copyWith(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent),
              child: TabBar(
                controller: controller.tabController,
                indicatorColor: Colors.transparent,
                tabs: [
                  // getTab(
                  //     Icons.home_outlined,
                  //     'Home',
                  //     controller.tabController.index == 0
                  //         ? Colors.black
                  //         : homeBoxColor),
                  getTab(
                      Icons.fire_truck,
                      'Assigned Loads',
                      controller.tabController.index == 0
                          ? Colors.black
                          : homeBoxColor
                  ),
                  getTab(
                      Icons.list,
                      'Open Loads',
                      controller.tabController.index == 1
                          ? Colors.black
                          : homeBoxColor),

                  width(5),
                  getTab(
                      Icons.wallet_outlined,
                      'Wallet & Earnings',
                      controller.tabController.index == 3
                          ? Colors.black
                          : homeBoxColor
                  ),
                  getTab(
                      Icons.person_outline,
                      'My Profile',
                      controller.tabController.index == 4
                          ? Colors.black
                          : homeBoxColor),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  getTab(IconData image, String text, Color iconColor) {
    return Icon(
      image,
      color: iconColor,
    );
  }
}
