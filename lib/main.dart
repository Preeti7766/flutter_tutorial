import 'package:first_app/pages/login_page.dart';
import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MaterialApp(
          themeMode: ThemeMode.light,
          theme: ThemeData(
              primarySwatch: Colors.deepPurple,
              fontFamily: GoogleFonts.lato().fontFamily),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: MyRoutes.homeRoute,
          routes: {
            "/": (context) => LoginPage(),
            MyRoutes.homeRoute: (context) => HomePage(),
            MyRoutes.loginRoute: (context) => LoginPage()
          },
        ));
  }
}
