import 'package:flutter/cupertino.dart';
import 'package:pinterestmobile/sql/app_database.dart';

class HeaderViewModel extends ChangeNotifier {
  late final PageController pageController = PageController();
  late int selectedIndex = 0;

  late final AppDatabase appDatabase;

  void setAppDatabase(AppDatabase value) {
    appDatabase = value;
    notifyListeners();
  }

  Future<void> initAppDatabase() async {
    await $FloorAppDatabase.databaseBuilder("app_database.db").build().then((value) async {
      setAppDatabase(value);
    });
  }

  void indexManage(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  void pageControl(int index) {
    selectedIndex = index;
    notifyListeners();
    pageController.jumpToPage(index);
  }

}