import 'package:contacts/homeview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
            size: 25,
          ),
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          bodyText2: TextStyle(
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
        dividerTheme: const DividerThemeData(
          color: Colors.brown,
          thickness: 1,
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
            elevation: 0,
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
            iconTheme: IconThemeData(
              color: Colors.black,
              size: 25,
            ),
          ),
          bottomNavigationBarTheme:
              BottomNavigationBarThemeData(backgroundColor: Color(0x0002A2A40)),
          textTheme: const TextTheme(
            bodyText1: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
            bodyText2: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
          dividerTheme: const DividerThemeData(
            color: Colors.brown,
            thickness: 1,
          )),
      themeMode: ThemeMode.light,
      home: const HomeView(),
    );
  }
}
