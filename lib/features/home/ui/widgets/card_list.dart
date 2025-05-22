import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_project/features/home/data/models/items_model.dart';
import 'package:web_project/features/home/ui/widgets/trip_card.dart';

class CardList extends StatelessWidget {
  const CardList({
    super.key,
    required this.itemsModel,
  });

  final List<ItemsModel> itemsModel;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;

        int crossAxisCount;
        if (width >= 1400) {
          crossAxisCount = 5;
        } else if (width >= 1100) {
          crossAxisCount = 4;
        } else if (width >= 800) {
          crossAxisCount = 4;
        } else if (width >= 600) {
          crossAxisCount = 4;
        } else {
          crossAxisCount = 1;
        }

        return GridView.count(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 25.w,
          mainAxisSpacing: 25.h,
          padding: EdgeInsets.all(20.w),
          childAspectRatio: 0.65,
          children: List.generate(itemsModel.length, (index) {
            return TripCard(itemsModel: itemsModel, index: index)
            ;
          }),
        );
      },
    );
  }
}
