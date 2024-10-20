import 'package:flutter/material.dart';
import 'package:mobile_apps/screens/device_views.dart';
import 'package:mobile_apps/screens/home_views.dart';
import 'package:mobile_apps/screens/login_views.dart';
import 'package:mobile_apps/screens/otp_views.dart';
import 'package:mobile_apps/screens/register_views.dart';
import 'package:mobile_apps/screens/vehicle_views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Routing Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginViews(),
        '/home': (context) => const HomeViews(),
        '/register': (context) => const RegisterViews(),
        '/otp': (context) => const OtpConfirmationView(),
        '/vehicle': (context) => const VehicleViews(),
        '/device': (context) => const DeviceViews()
      },
    );
  }
}
