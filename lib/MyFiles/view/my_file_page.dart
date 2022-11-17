import 'package:flutter/material.dart';
import 'package:untitled/MyFiles/my_files.dart';
import 'package:untitled/l10n/l10n.dart';
import 'package:untitled/theme/theme.dart';

class MyFilesPage extends StatelessWidget {
  const MyFilesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.defaultColor, // Status bar color
      child: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(68.0),
            child: AppBar(
              backgroundColor: AppTheme.defaultColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              // App bar color
              elevation: 0.0,
              title: Text(context.l10n!.myFiles),
              centerTitle: true,
              leading: Icon(Icons.menu),
            ),
          ),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: const SingleChildScrollView(
              child: PageContent(),
            ),
          ),
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              child: Theme(
                data: Theme.of(context).copyWith(
                  // sets the background color of the `BottomNavigationBar`
                  canvasColor: Colors.white,
                ),
                child: BottomNavigationBar(
                  items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.file_copy_outlined),
                      // activeIcon: HexaShape(
                      //   color: Colors.white,
                      //   size: 16.0,
                      //   icon: Icons.file_copy_outlined,
                      // ),
                      label: context.l10n!.myFiles,
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: context.l10n!.home,
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.engineering),
                      label: context.l10n!.sendDefects,
                    ),
                  ],
                  selectedItemColor: AppTheme.defaultColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
