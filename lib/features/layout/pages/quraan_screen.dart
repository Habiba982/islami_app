import 'package:flutter/material.dart';
import 'package:new_app/core/constant/app_assets.dart';

class QuraanScreen extends StatelessWidget {
  const QuraanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
        AppAssets.QuraanBG,
      ))),
    );
  }
}
