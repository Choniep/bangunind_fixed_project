import 'package:bangunind_fixed_project/views/auth/main_page.dart';
import 'package:bangunind_fixed_project/views/detail_page.dart';
import 'package:bangunind_fixed_project/views/home_screen.dart';
import 'package:bangunind_fixed_project/views/search_page.dart';
import 'package:bangunind_fixed_project/views/sign_in_page.dart';
import 'package:bangunind_fixed_project/views/sign_up_page.dart';
import 'package:bangunind_fixed_project/views/user_page.dart';
import 'package:bangunind_fixed_project/views/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          fontFamily: 'Product Sans'),
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      initialRoute: '/',
      routes: {
        '/home': (context) => HomeScreen(),
        '/search': (context) => SearchPage(),
        '/user': (context) => UserPage(),
        '/welcome': (context) => WelcomePage(),
        '/signup': (context) => SignUpPage(),
        '/singin': (context) => SignInPage(),
        '/detail': (context) => DetailPage(),
      },
    );
  }
}
