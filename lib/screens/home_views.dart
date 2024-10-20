import 'package:flutter/material.dart';
import 'package:mobile_apps/widgets/DeviceInfoCard.dart';
import 'package:mobile_apps/widgets/VehicleInfoCard.dart';
import '../constanst/app_colors.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Container(
            decoration: BoxDecoration(
              color: AppColors.LigthGrey,
              borderRadius: BorderRadius.circular(100),
            ),
            padding: const EdgeInsets.only(right: 20.0, left: 8.0, top: 8.0, bottom: 8.0),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 20,
                  // backgroundImage: NetworkImage('https://example.com/avatar.png'), // Ganti dengan URL avatar
                ),
                SizedBox(width: 8),
                Text(
                  'Farhan',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
              },
            ),
          ],
        ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 4, 0, 4),
            child: Text(
              'Hello, Farhan',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: VehicleInfoCard()
          ),
          SizedBox(
            width: double.infinity,
            child: Deviceinfocard()
          ),
        ],
      ),
    );
  }
}
