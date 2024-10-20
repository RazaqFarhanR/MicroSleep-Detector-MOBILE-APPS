// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:mobile_apps/constanst/app_colors.dart';

class Deviceinfocard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Device',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[900]),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/device');
                  },
                  style: ElevatedButton.styleFrom(
                    iconColor: Colors.white,
                    backgroundColor: AppColors.DarkBlue
                  ),
                  child: const Icon(Icons.arrow_forward),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Serial Number:',
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 6), // Jarak vertikal antara teks
                Text(
                  'MCS_202410100002',
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Widget _buildInfoItem(String title, String value) {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Text(
  //         title,
  //         style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey[900]),
  //       ),
  //       const SizedBox(height: 4),
  //       Text(
  //         value,
  //         style: TextStyle(fontSize: 14, color: Colors.grey[800]),
  //       ),
  //     ],
  //   );
  // }
}