import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_project/core/helpers/constants.dart';
import 'package:web_project/core/theming/assets.dart';
import 'package:web_project/core/theming/colors.dart';
import 'package:web_project/core/theming/text_styles.dart';
import 'package:web_project/features/home/data/models/items_model.dart';
import 'package:web_project/features/home/ui/widgets/card_list.dart';
import 'package:web_project/features/home/ui/widgets/trip_card_mobile.dart';

class ItemsScreen extends StatelessWidget {
   ItemsScreen({super.key});
   List<ItemsModel> itemsModel = [
     ItemsModel(image: AppAssets.tree, title: 'Item title', status: 'Pending Approval',
         date: 'Jan 16 - Jan 20, 2024',
         finishedTasks: '4 unfinished tasks',
         numOfUsers: 9),
     ItemsModel(image: AppAssets.building, title: 'Long item title highlight Long item title highlight', status: 'Pending Approval',
         date: '5 Nights (Jan 16 - Jan 20, 2024) ',
         finishedTasks: '4 unfinished tasks',
         numOfUsers: 2),
     ItemsModel(image: AppAssets.tree, title: 'Item title',
         status: 'Pending Approval',
         date: '5 Nights (Jan 16 - Jan 20, 2024) ',
         finishedTasks: '4 unfinished tasks',
         numOfUsers: 9),
     ItemsModel(image: AppAssets.sea, title: 'Item title',
         status: 'Pending Approval',
         date: '5 Nights (Jan 16 - Jan 20, 2024) ',
         finishedTasks: '4 unfinished tasks',
         numOfUsers: 9),
     ItemsModel(image: AppAssets.tree, title: 'Item title',
         status: 'Pending Approval',
         date: '5 Nights (Jan 16 - Jan 20, 2024) ',
         finishedTasks: '4 unfinished tasks',
         numOfUsers: 9),
     ItemsModel(image: AppAssets.tree, title: 'Item title',
         status: 'Pending Approval',
         date: '5 Nights (Jan 16 - Jan 20, 2024) ',
         finishedTasks: '4 unfinished tasks',
         numOfUsers: 9),
     ItemsModel(image: AppAssets.building, title: 'Item title',
         status: 'Pending Approval',
         date: '5 Nights (Jan 16 - Jan 20, 2024) ',
         finishedTasks: '4 unfinished tasks',
         numOfUsers: 9),
     ItemsModel(image: AppAssets.tree, title: 'Item title',
         status: 'Pending Approval',
         date: '5 Nights (Jan 16 - Jan 20, 2024) ',
         finishedTasks: '4 unfinished tasks',
         numOfUsers: 9),
   ];
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;

    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 40.w,vertical: 30.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            children: [
              Text('Items',style: appWidth(context)>600?AppTextStyles.fontWhite32W400:AppTextStyles.fontWhite50W500,),
              Spacer(),
              IconButton(onPressed: (){}, icon: SvgPicture.asset(AppAssets.filter)),
              if (width>642)
                Container(
                padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 16.h),
                height: 48,
                decoration: BoxDecoration(
                  color: AppColors.primaryYellowColor,
                  borderRadius: BorderRadius.circular(100.r),
                ),
                child: MaterialButton(onPressed: (){},
                  child: Row(
                    children: [
                      Icon(Icons.add,size: 20,),
                      Text('Add a New Item',style: AppTextStyles.fontBlack14W500,),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20.h,),
          appWidth(context)<600?
              Expanded(
                child: ListView.separated(itemBuilder: (context, index) {
                  return SizedBox(
                      height: 380,child: TripCardMobile(itemsModel: itemsModel, index: index));
                }, separatorBuilder: (context, index) => SizedBox(height: 20.h,), itemCount: itemsModel.length),
              )
          :Expanded(child: CardList(itemsModel: itemsModel))
        ],
      ),
    );
  }
}
