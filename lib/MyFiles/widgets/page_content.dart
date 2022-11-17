import 'package:flutter/material.dart';
import 'package:untitled/MyFiles/my_files.dart';
import 'package:untitled/l10n/l10n.dart';
import 'package:untitled/theme/constants.dart';
import 'package:untitled/theme/theme.dart';

class PageContent extends StatefulWidget {
  const PageContent({Key? key}) : super(key: key);

  @override
  State<PageContent> createState() => _PageContentState();
}

class _PageContentState extends State<PageContent>
    with TickerProviderStateMixin {
  final tabBarButtonsStatus = [
    false,
    true,
    false,
  ];
  late final TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 1, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: Constants.tabControllerPadding,
          child: Container(
            decoration: BoxDecoration(
              color: AppTheme.defaultColor,
              border: Border.all(
                color: AppTheme.defaultColor,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(40.0)),
            ),
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TabbarButton(
                  label: context.l10n!.carBodyInsuranceIssue,
                  onTap: () {
                    tabController.animateTo(0);
                    setState(() {
                      tabBarButtonsStatus[0] = true;
                      tabBarButtonsStatus[1] = false;
                      tabBarButtonsStatus[2] = false;
                    });
                  },
                  isActive: tabBarButtonsStatus[0],
                ),
                TabbarButton(
                  label: context.l10n!.visitCarBody,
                  onTap: () {
                    tabController.animateTo(1);
                    setState(() {
                      tabBarButtonsStatus[0] = false;
                      tabBarButtonsStatus[1] = true;
                      tabBarButtonsStatus[2] = false;
                    });
                  },
                  isActive: tabBarButtonsStatus[1],
                ),
                TabbarButton(
                  label: context.l10n!.damageDeclaration,
                  onTap: () {
                    tabController.animateTo(2);
                    setState(() {
                      tabBarButtonsStatus[0] = false;
                      tabBarButtonsStatus[1] = false;
                      tabBarButtonsStatus[2] = true;
                    });
                  },
                  isActive: tabBarButtonsStatus[2],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 700,
          width: 400,
          child: TabBarView(
            controller: tabController,
            children: const [
              Text('tab1'),
              VisitCarBodyPage(),
              Text('tab3'),
            ],
          ),
        )
      ],
    );
  }
}
