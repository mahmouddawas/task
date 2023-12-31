import 'package:flutter/material.dart';
import 'package:task/Controls/musicModel.dart';

class ProviderModel with ChangeNotifier {
  List<MusicModel> musicModel = <MusicModel>[];
  String musicName = "";

  /// Adds [item] to cart. This and [removeAll] are the only ways to modify the
  /// cart from the outside.
  void sendData(String name) {
    musicName = name;
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  /// Removes all items from the cart.
  void removeAll() {
    musicModel.clear();
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }
}
