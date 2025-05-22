
import 'package:flutter/material.dart';
import 'package:web_project/core/theming/colors.dart';

class ShadowWidget extends StatelessWidget {
  const ShadowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 170,
      left: 0,
      right: 0,
      height: 40,
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.primaryLightBlackColor.withOpacity(0.4), // Shadow color with opacity
                spreadRadius: 5, // How much the shadow spreads
                blurRadius: 5, // How blurry the shadow is
                offset: Offset(4, -12), // Shadow position (x, y)
              )
            ]
          // gradient: LinearGradient(
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          //   colors: [
          //     Colors.black.withOpacity(0.2),
          //     Colors.black.withOpacity(0.0),
          //   ],
          // ),
        ),
      ),
    );
  }
}
