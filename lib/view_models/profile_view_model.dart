import 'package:flutter/material.dart';

mixin ProfileViewModel
    implements ChangeNotifier, TickerProviderStateMixin<StatefulWidget> {
  late TabController tabController;
  changeTabBar() {
    initState();
    tabController = TabController(length: 3, vsync: this);
  }
}
