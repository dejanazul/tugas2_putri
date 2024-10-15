import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class FavoriteController extends GetxController {
  var favorites = <bool>[].obs;

  void initializeFavorites(int itemCount) {
    favorites.value = List<bool>.filled(itemCount, false);
  }

  void toggleFavorite(int index) {
    favorites[index] = !favorites[index]; // Toggle favorite state
  }

  bool isFavorited(int index) {
    return favorites[index];
  }
}
