import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';

class SearchHeaderWidget extends StatelessWidget {
  const SearchHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.23 + 25,
      child: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.23,
            width: double.infinity,
            child: Image.asset(
              AppImages.searchBackground,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            left: 15,
            top: 60,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Which Language\n',
                    style: AppTextStyles.font22Medium.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  TextSpan(
                      text: 'would you like to learn?',
                      style: AppTextStyles.font13Regular),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 15,
            right: 15,
            top: MediaQuery.of(context).size.height * 0.23 - 25,
            child: Material(
              borderRadius: BorderRadius.circular(12),
              elevation: 20.0,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search Language...',
                  hintStyle: TextStyle(color: Colors.grey[600]),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
