import 'package:flutter/material.dart';
import 'package:zaf/core/constants/app_assets.dart';
import 'package:zaf/core/theme/app_colors.dart';
import 'package:zaf/home_screen.dart';
import '../../core/widgets/custom.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  final TextEditingController nameController = TextEditingController();



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
                  Image.asset(AppAssets.authImage),
                  Image.asset(AppAssets.auth_back),
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
                  const Text(
                    'What is your firstname?',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: 'Tony',
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 18,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: AppColor.primaryColor,
                          width: 1.5,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  CustomS(
                    text: 'Start Ordering',
                    onPressed: () {
                      if (nameController.text.isNotEmpty) {
                        Navigator.pushReplacementNamed(
                          context,
                          '/home_page',
                          arguments: {"name": nameController.text},
                        );
                      } else {
                        ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                          const SnackBar(
                            content: Text("Please enter your name"),
                          ),
                        );
                      }
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
