import 'dart:io';

import 'package:apanpandiji/Screens/AboutScreen.dart';
import 'package:apanpandiji/Screens/BookingScreen.dart';
import 'package:apanpandiji/Screens/ServiceScreen.dart';
import '../provider/internet_provider.dart';
import '../provider/sign_in_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/HomeScreen.dart';
import 'Screens/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import './utils/config.dart';


void main() {
   // FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  runApp(const MyApp());
}
// void  main()  async{
//   // initialize the application
//
//   WidgetsFlutterBinding.ensureInitialized();
//   // await Firebase.initializeApp();
//   // Platform.isAndroid?await Firebase.initializeApp(
//   //   options: FirebaseOptions(
//   //     apiKey: "AIzaSyBFv8ufl8I480UABonfcU2mRsE4tLEXC1o",
//   //     appId: "1:843907235479:android:07153a63b77678a35733d2",
//   //     messagingSenderId: "843907235479",
//   //     projectId: "pujakarmauth",
//   //   )
//   // ):await Firebase.initializeApp();
//   Platform.isAndroid?await Firebase.initializeApp(
//       options: FirebaseOptions(
//         apiKey: Config.andrapiKey,
//         appId: Config.andrappId,
//         messagingSenderId: Config.andrmessagingSenderId,
//         projectId: Config.andrprojectId,
//       )
//   ):await Firebase.initializeApp();
//
//
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(
//           create: ((context) => SignInProvider()),
//         ),
//         ChangeNotifierProvider(
//           create: ((context) => InternetProvider()),
//         ),
//       ],
//       child: const MaterialApp(
//         home: SplashScreen(),
//         debugShowCheckedModeBanner: false,
//       ),
//     );
//   }
// }


const List<Tab> tabs = <Tab>[
  Tab(text: 'Home'),
  Tab(text: 'About'),
  Tab(text: 'Service')
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          drawer: const Sidedrawer(),
          appBar: AppBar(
            backgroundColor: Colors.orangeAccent.shade700,
            // leading: Image.asset('assets/images/pujakarmlogo.png'),
            title: const Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                Text("PujaKarm",style: TextStyle(fontSize: 18)),
                Text("|| लोकाः समस्ताः सुखिनोभवन्तु ||",style: TextStyle(fontSize: 10)),
              ],
            ),

          ),
          bottomNavigationBar: menu(),
          body: TabBarView(
            children: [
              // Container(child: Icon(Icons.directions_car)),
              HomeScreen(),
              // Container(child: Icon(Icons.directions_transit)),
              AboutScreen(),
              // Container(child: Icon(Icons.directions_bike)),
              ServiceScreen(),

              // Container(child: Icon(Icons.directions_bike)),
              BookingScreen()
            ],
          ),
          floatingActionButton: const Icon(Icons.chat_bubble_rounded),
        ),
      ),
    );
  }

  Widget menu() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.yellowAccent.shade700, Colors.orangeAccent.shade700],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        stops: const [0.4, 0.7],
        tileMode: TileMode.repeated,
      )),
      child: const TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.black,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.blue,
        tabs: [
          Tab(
            text: "Home",
            icon: Icon(Icons.home),
          ),
          Tab(
            text: "About",
            icon: Icon(Icons.info),
          ),
          Tab(
            text: "Services",
            icon: Icon(Icons.badge),
          ),
          Tab(
            text: "Booking",
            icon: Icon(Icons.check),
          ),
          // Tab(
          //   text: "Contact",
          //   icon: Icon(Icons.phone),
          // ),
        ],
      ),
    );
  }
}

//Drawer
class Sidedrawer extends StatelessWidget {
  const Sidedrawer({super.key});

  // get accountName => null;
  // get accountEmail => null;
  get accountName => const Text("Sachin Tiwari");
  get accountEmail => const Text("visit2warrior");

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.orangeAccent.shade700),
            accountName: accountName,
            accountEmail: accountEmail),
        ListTile(
          leading: const Icon(Icons.account_balance),
          title: const Text('My Account'),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          leading: const Icon(Icons.share),
          title: const Text('Share'),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Settings'),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
      ],
    ));
  }
}
