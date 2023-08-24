import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:moyen_xpress_app/route_management/route_management.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/route_utils.dart';
import 'package:moyen_xpress_app/utils/size_utils.dart';
import 'package:moyen_xpress_app/utils/storage_utils.dart';
import 'package:moyen_xpress_app/view/profile/settings/settings_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'controller/theme_controller.dart';
import 'lang/trans.dart';

String? route;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  final getStorage = GetStorage();
  runApp( MyApp());
}

ThemeData _darkTheme = ThemeData(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.amber,
      disabledColor: Colors.grey,
    ));

ThemeData _lightTheme = ThemeData(
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.green
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.green,
      disabledColor: Colors.grey,
    ));

class MyApp extends StatelessWidget {

  final ThemeController themeController = Get.put(ThemeController());
  final _getStorage = GetStorage();

  @override

  Widget build(BuildContext context) {
    final bool isAlreadyLogin = _getStorage.read(isAlreadyLoginUtil) ?? false;
    final String languageLocale = _getStorage.read(languageLocalePUtil) ?? "en";
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Moyen Xpress App',
            theme: ThemeData(
              primarySwatch: primaryColorSwatch,
              appBarTheme: AppBarTheme(
                backgroundColor: Colors.white
              ),
              // colorScheme: const ColorScheme.dark(),
              fontFamily:'Nexa',
            ),

            //Default theme
            locale: Locale(languageLocale),
            fallbackLocale: const Locale('en', 'US'),
            translations: AppTranslations(),

            initialRoute: kSplashScreen,
            getPages: RouteManagement.getPages(),

            // initialBinding: ControllerBinding(),
          );
        }
    );
  }
}



// import 'package:flutter/material.dart';
//
// class MyScreen extends StatefulWidget {
//   @override
//   _MyScreenState createState() => _MyScreenState();
// }
//
// class _MyScreenState extends State<MyScreen> with SingleTickerProviderStateMixin {
//   TabController? _tabController;
//
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this);
//   }
//
//   @override
//   void dispose() {
//     _tabController!.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Screen'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             ListView.builder(
//               shrinkWrap: true,
//               physics: NeverScrollableScrollPhysics(),
//               itemCount: 20, // Replace with the actual item count
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text('Item $index'),
//                 );
//               },
//             ),
//             TabBar(
//               controller: _tabController,
//               tabs: [
//                 Tab(text: 'Tab 1'),
//                 Tab(text: 'Tab 2'),
//               ],
//             ),
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.4,
//               child: TabBarView(
//                 controller: _tabController,
//                 children: [
//                   Container(
//                     color: Colors.red,
//                     child: Center(child: Text('Tab 1 Content')),
//                   ),
//                   Container(
//                     color: Colors.blue,
//                     child: Center(child: Text('Tab 2 Content')),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(MaterialApp(
//     home: MyScreen(),
//   ));
// }
