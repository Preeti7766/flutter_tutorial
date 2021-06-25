import 'package:first_app/pages/login_page.dart';
import 'package:first_app/utils/routes.dart';
import 'package:first_app/widgets/theams.dart';
import 'package:flutter/material.dart';
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
          theme: MyTheme.darkTheme(context),
          darkTheme: MyTheme.darkTheme(context),
          debugShowCheckedModeBanner: false,
          initialRoute: MyRoutes.loginRoute,
          routes: {
            "/": (context) => LoginPage(),
            MyRoutes.homeRoute: (context) => HomePage(),
            MyRoutes.loginRoute: (context) => LoginPage()
          },
        ));
  }
}
