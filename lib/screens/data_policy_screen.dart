import 'package:flutter/material.dart';

class DataPolicyScreen extends StatelessWidget {
  static final String id = 'data_policy_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Data Policy',
        ),
      ),
    );
  }
}
