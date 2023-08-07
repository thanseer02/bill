
import 'package:bill_wizard/splash.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key,});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // canvasColor:Color(0xFFACEFC9),
          appBarTheme: AppBarTheme(
              backgroundColor: Color(0xffFFFFFF),
              centerTitle: true,

          ),
        canvasColor: Color(0xffFFFFFF),
        // cardColor:Color(0xff8F8F8F)

      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,

    );
  }
}


