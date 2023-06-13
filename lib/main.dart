import 'package:flutter/material.dart';
import 'package:widget_practice/alert_dialog_box.dart';
import 'package:widget_practice/bottom_sheet_demo.dart';
import 'package:widget_practice/container_demo.dart';
import 'package:widget_practice/drawer_demo.dart';
import 'package:widget_practice/image.dart';
import 'package:widget_practice/listview_builder.dart';
import 'package:widget_practice/mediaquery.dart';
import 'package:widget_practice/practice.dart';

import 'package:widget_practice/slider.dart';
import 'package:widget_practice/snackbar.dart';
import 'package:widget_practice/switch_demo.dart';
import 'package:widget_practice/tab_bar_demo.dart';
import 'package:widget_practice/text_form_field.dart';
import 'package:widget_practice/textfeild.dart';
import 'package:widget_practice/tic_tac_game_demo.dart';
import 'package:widget_practice/uidemo.dart';
import 'bottom_navigationbar.dart';
import 'drop_down_button.dart';
import 'gridviewcount.dart';
import 'listview_seprate.dart';
import 'simple_ui.dart';

main() => runApp(
      MaterialApp(
        home:  ImageDemo(),
        theme: ThemeData(),
        debugShowCheckedModeBanner: false,
      ),
    );

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
