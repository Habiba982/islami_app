import 'package:flutter/material.dart';
import 'package:new_app/core/constant/app_assets.dart';

class SbhaScreen extends StatelessWidget {
  const SbhaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(
          AppAssets.sbhaBG,
        ),
      )),
    );
  }
}
