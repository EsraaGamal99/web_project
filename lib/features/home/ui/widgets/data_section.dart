import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_project/core/helpers/constants.dart';
import 'package:web_project/core/theming/assets.dart';
import 'package:web_project/core/theming/colors.dart';
import 'package:web_project/core/theming/text_styles.dart';
import 'package:web_project/features/home/data/models/items_model.dart';

class DataSection extends StatelessWidget {
  const DataSection({
    super.key,
    required this.itemsModel,
    required this.index,
  });

  final List<ItemsModel> itemsModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    // Bottom Half: Content
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        //    color: Colors.black87,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              itemsModel[index].title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: appWidth(context)>600?AppTextStyles.fontWhite18W400:AppTextStyles.fontWhite50W500
          ),
          appWidth(context)>600?SizedBox(height: 6.h):SizedBox(height: 12.h,),
          Row(
            children: [
              Image.asset(AppAssets.calendar),
              appWidth(context)>600?SizedBox(width: 4.w):SizedBox(width: 12.w,),
              Expanded(
                child: Text(
                  itemsModel[index].date,
                  style: appWidth(context)>600?AppTextStyles.fontWhite12W400:AppTextStyles.fontDateColor50W500,),
              ),
            ],
          ),
          SizedBox(height: 12.h,),
          Divider(color: AppColors.dividerColor,),
          SizedBox(height: 12.h,),
          Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: appWidth(context)>600?25.r:60.r,
                      backgroundImage: AssetImage(AppAssets.profile),
                    ),
                    if(itemsModel[index].numOfUsers>=2)
                      Positioned(
                        left: appWidth(context)>600?12:18,
                        child:  CircleAvatar(
                          radius: appWidth(context)>600?25.r:60.r,
                          backgroundImage: AssetImage(AppAssets.girl),
                        ),
                      ),
                    if(itemsModel[index].numOfUsers>=3)
                      Positioned(
                        left: appWidth(context)>600?28:30,
                        child:  CircleAvatar(
                          radius: appWidth(context)>600?25.r:60.r,
                          backgroundImage: AssetImage(AppAssets.boy),
                        ),
                      ),
                    if(itemsModel[index].numOfUsers>=4) Positioned(
                      left: appWidth(context)>600?34:45,
                      child: Container(
                        width: appWidth(context)>600?55.w:145.w,
                        height: appWidth(context)>600?55.h:145.w,
                        decoration:  BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.circleColor,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          '+6', style: appWidth(context)>600?AppTextStyles.fontYellow9W500:AppTextStyles.fontYellow32W400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                itemsModel[index].finishedTasks,
                style: appWidth(context)>600?AppTextStyles.fontWhite12W400:AppTextStyles.fontDateColor50W500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
