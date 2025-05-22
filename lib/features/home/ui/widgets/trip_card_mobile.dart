import 'package:flutter/material.dart';
import 'package:web_project/core/theming/colors.dart';
import 'package:web_project/features/home/data/models/items_model.dart';
import 'package:web_project/features/home/ui/widgets/approval_button.dart';
import 'package:web_project/features/home/ui/widgets/data_section.dart';
import 'package:web_project/features/home/ui/widgets/image_section.dart';
import 'package:web_project/features/home/ui/widgets/shadow.dart';

class TripCardMobile extends StatelessWidget {
  final List<ItemsModel> itemsModel;
  final int index;
  const TripCardMobile({
    super.key, required this.itemsModel, required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryLightBlackColor,
          border: Border.all(color: Colors.black12),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Stack(
                // fit: StackFit.expand,
                children: [
                  ImageSection(itemsModel: itemsModel, index: index),
                  ShadowWidget(),
                  ApprovalButton(),
                ],
              ),
            ),
            Expanded(
                flex: 2,
                child: DataSection(itemsModel: itemsModel, index: index)),
          ],
        ),
      ),
    );
  }
}
