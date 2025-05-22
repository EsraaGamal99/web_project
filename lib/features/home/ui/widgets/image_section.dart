import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_project/core/theming/assets.dart';
import 'package:web_project/features/home/data/models/items_model.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({
    super.key,
    required this.itemsModel,
    required this.index,
  });

  final List<ItemsModel> itemsModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          itemsModel[index].image,
          fit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.6),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        // Optional: Status badge at the top-right
        Positioned(
          top: 2,
          right: 2,
          child: IconButton(icon:SvgPicture.asset(AppAssets.more),
            onPressed: () {  },),
        ),
      ],
    );
  }
}
