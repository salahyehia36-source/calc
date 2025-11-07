import 'package:flutter/material.dart';
import 'package:zaf/core/constants/app_assets.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/widgets/custom.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: AppColor.primaryColor,
              padding: const EdgeInsets.all(80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                spacing: 8,
                children: [

                  Image.asset(AppAssets.onBoard1),
                  Image.asset(AppAssets.onBoard11),
                ],
              ),
            ),
          ),
          const SizedBox(height: 56.0),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Get The Freshest Fruit Salad Combo',
                    style: TextStyle(
                      color: AppColor.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  Text(
                    'We deliver the best and freshest fruit salad in town. Order for a combo today!!!',
                    style: TextStyle(
                      color: AppColor.black.withOpacity(0.6),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 56.0),
                  CustomS(
                    text: 'Let’s Continue',
                    onPressed: () {
                      Navigator.pushNamed(context, '/Auth');
                    },
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

