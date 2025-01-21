import 'package:flutter/material.dart';
import 'package:new_app/core/constant/app_assets.dart';

class HadeethScreen extends StatelessWidget {
  const HadeethScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              AppAssets.HadeethBG,
            )),
      ),
    );
  }
}
