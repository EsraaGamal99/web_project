import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_project/core/theming/assets.dart';
import 'package:web_project/core/theming/colors.dart';
import 'package:web_project/core/theming/text_styles.dart';

import 'divider_vertical.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required TabController tabController,
    required this.tabs,
  }) : _tabController = tabController;

  final TabController _tabController;
  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:(context, constraints) {
        if (constraints.maxWidth < 646){
          return Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 12.h,right: 30.w,bottom: 12.h),
                child: Row(children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.white,)),
                  SizedBox(width: 10.w,),
                  SvgPicture.asset(AppAssets.logo),
                  Spacer(),
                  IconButton(onPressed: (){}, icon: SvgPicture.asset(AppAssets.settings)),
                  SizedBox(width: 12.w),
                  IconButton(onPressed: (){}, icon: SvgPicture.asset(AppAssets.notification)),
                  SizedBox(width: 12.w),
                  DividerVertical(),
                  SizedBox(width: 12.w),
                  CircleAvatar(
                    radius: 50.r,
                    backgroundColor: Colors.transparent,
                    child: ClipOval(
                      child: Image.asset(
                        AppAssets.profile,
                        width: 100.r,
                        height: 100.r,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],),
              ),
              Divider(height: 1.h,color: AppColors.primaryGreyColor,),
            ],
          );
        }
        else{
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0.h,horizontal: 40.w),
                child: Row(
                  children: [
                    SvgPicture.asset(AppAssets.logo,width: 82.w,height: 40.h,),
                    Spacer(),
                    TabBar(
                      isScrollable: true,
                      labelPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                      dividerColor: Colors.transparent,
                      labelStyle: constraints.maxWidth > 644?AppTextStyles.fontWhite14W500:AppTextStyles.fontWhite18W400,
                      unselectedLabelStyle: constraints.maxWidth > 644?AppTextStyles.fontWhite14W500:AppTextStyles.fontWhite18W400,
                      indicatorSize: TabBarIndicatorSize.label,
                      controller: _tabController,
                      tabs: tabs.map((e) => Tab(
                        text: e,
                      )).toList(),
                      indicatorColor: AppColors.primaryYellowColor,
                      labelColor: AppColors.primaryWhiteColor,
                      unselectedLabelColor: AppColors.primaryLightGreyColor,
                      onTap: (index) {},
                    ),
                    SizedBox(width: 18.w),
                    DividerVertical(),
                    SizedBox(width: 18.w),
                    IconButton(onPressed: (){}, icon: SvgPicture.asset(AppAssets.settings)),
                    SizedBox(width: 18.w),
                    IconButton(onPressed: (){}, icon: SvgPicture.asset(AppAssets.notification)),
                    SizedBox(width: 18.w),
                    DividerVertical(),
                    SizedBox(width: 18.w),
                    CircleAvatar(
                      radius: 50.r,
                      backgroundColor: Colors.transparent,
                      child: ClipOval(
                        child: Image.asset(
                          AppAssets.profile,
                          width: 50.r,
                          height: 50.r,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text('John Doe',style: AppTextStyles.fontWhite14W400,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down,color: AppColors.primaryWhiteColor,size: 16,)),
                  ],
                ),
              ),
              Divider(height: 1.h,color: AppColors.primaryGreyColor,),
            ],
          );
        }

      }

    );
  }
}
