import 'package:calculator/src/viewmodel/app_viewmodel/app_viewmodal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final ChangeNotifierProvider<AppViewModel> appProvider =
    ChangeNotifierProvider<AppViewModel>(
        (ChangeNotifierProviderRef<AppViewModel> ref) {
  return AppViewModel();
});
