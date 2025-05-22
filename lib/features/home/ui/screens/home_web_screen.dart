import 'package:flutter/material.dart';
import 'package:web_project/core/theming/colors.dart';
import 'package:web_project/core/theming/text_styles.dart';
import 'package:web_project/core/widgets/custom_appbar.dart';
import 'package:web_project/features/home/ui/screens/items_screen.dart';

class HomeWebScreen extends StatefulWidget {
   HomeWebScreen({super.key});

  @override
  State<HomeWebScreen> createState() => _HomeWebScreenState();
}

class _HomeWebScreenState extends State<HomeWebScreen> with SingleTickerProviderStateMixin {
  final List<String> tabs = [
   'Items',
    'Pricing',
    'Info',
    'Tasks',
    'Analytics',
  ];
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length:5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlackColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomAppBar(tabController: _tabController, tabs: tabs),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children:  [
                ItemsScreen(),
                Center(child: Text('Pricing',style: AppTextStyles.fontWhite14W500,),),
                Center(child: Text('Info',style: AppTextStyles.fontWhite14W500,),),
                Center(child: Text('Tasks',style: AppTextStyles.fontWhite14W500,),),
                Center(child: Text('Analytics',style: AppTextStyles.fontWhite14W500,),),
              ],),
          )
        ],
      ),
    );
  }
}


