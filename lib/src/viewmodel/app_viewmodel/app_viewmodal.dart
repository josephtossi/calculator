import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppViewModel extends ChangeNotifier {
  /// Variables ///
  int pageIndex = 0;
  String? idOfPhone = '-1';
  Map? mobileDeviceData = {};
  bool loaderForAddItem = false;
  bool loaderForRecipes = false;
  List myItems = [];
  List myGroceryList = [];
  List ingredients = [];
  List categories = [];
  List culture = [];
  List dietitians = [];
  Map userData = {};
  List favorites = [];
  int randomTimeUserEnterApp = Random().nextInt(4) + 1;
  int userPressedYoutube = 0;
  bool adsIsDisabled = false;
  bool darkModeEnabled = false;

  List leftSidePages = [
    {"name": "How to use", "icon": Icons.question_mark_sharp},
    {"name": "Subscribe", "icon": Icons.workspace_premium},
    {"name": "Categories", "icon": Icons.category},
    {"name": "Culture", "icon": Icons.food_bank_outlined},
    {"name": "Profile", "icon": Icons.manage_accounts_rounded},
    {"name": "Grocery List", "icon": Icons.local_grocery_store},
    {"name": "Meal Plan", "icon": Icons.sports_gymnastics},
    {"name": "About Us", "icon": Icons.info_outline_rounded},
    {"name": "Terms & Conditions", "icon": Icons.check_box_outlined},
    // {"name": "Cms", "icon": Icons.content_copy},
  ];

  /// Functions ///
  setAdsDisabled({required bool val}) {
    adsIsDisabled = val;
    notifyListeners();
  }

  setLeftSidePages({required List val}) {
    leftSidePages = val;
    notifyListeners();
  }

  setDarkModeEnabled({required bool val}) {
    darkModeEnabled = val;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: val ? Color(0xff181818) : Colors.white,
        systemNavigationBarIconBrightness:
            val ? Brightness.light : Brightness.dark));
    notifyListeners();
  }

  setLoaderForAddItem({required bool value}) {
    loaderForAddItem = value;
    notifyListeners();
  }

  setLoaderForRecipes({required bool value}) {
    loaderForRecipes = value;
    notifyListeners();
  }

  setMyItems({required List items}) {
    myItems = items;
    notifyListeners();
  }

  setMyGroceryItems({required List items}) {
    myGroceryList = items;
    notifyListeners();
  }

  addToMyGroceryList({required item}) {
    myGroceryList.add(item);
    notifyListeners();
  }

  removeFromMyGroceryList({required item}) {
    myGroceryList.remove(item);
    notifyListeners();
  }

  setUserData({required Map user}) {
    userData = user;
    notifyListeners();
  }

  setUserFavorites({required List favorites}) {
    this.favorites = favorites;
    notifyListeners();
  }

  addToUserFavorites({required Map favorite}) {
    favorites.add(favorite);
    notifyListeners();
  }

  removeFromUserFavorites({required Map favorite}) {
    favorites.remove(favorite);
    notifyListeners();
  }

  setIngredients({required List items}) {
    ingredients = items;
    notifyListeners();
  }

  setCategories({required List cat}) {
    categories = cat;
    notifyListeners();
  }

  setCulture({required List val}) {
    culture = val;
    notifyListeners();
  }

  setDietitians({required List val}) {
    dietitians = val;
    notifyListeners();
  }

  setPageIndex({required int index}) {
    pageIndex = index;
    notifyListeners();
  }

  incrementUserPressedYoutube() {
    userPressedYoutube += 1;
    notifyListeners();
  }
}
