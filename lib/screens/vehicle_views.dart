import 'package:flutter/material.dart';
import 'package:mobile_apps/constanst/app_colors.dart';

class VehicleViews extends StatelessWidget {
  const VehicleViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.DarkBlue,
        title: const Text(
          'Vehicle Information',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          ),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.white
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
            ),
          ),
      ),
    );
  }
}
