import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_project/core/helpers/constants.dart';
import 'package:web_project/core/theming/assets.dart';
import 'package:web_project/core/theming/text_styles.dart';

class ApprovalButton extends StatelessWidget {
  const ApprovalButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Align(
        alignment: AlignmentDirectional.bottomStart,
        child: Padding(
          padding: EdgeInsets.only(left: 12.w),
          child: Container(
            width: appWidth(context)>991? 175.w:appWidth(context)<600?700.w:250.w,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFC25F30)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.brown.withOpacity(0.4),
                  Colors.brown.withOpacity(0.2),
                ],
              ),
              //color: Color(0xFF1F1510).withOpacity(0.2),
              borderRadius: BorderRadius.circular(180),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Pending Approval',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: appWidth(context)>991?AppTextStyles.fontWhite14W400:appWidth(context)>600?AppTextStyles.fontWhite18W400
                        :AppTextStyles.fontWhite50W500,
                  ),
                ),
                Image.asset(AppAssets.arrowDown,color: Colors.white,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
