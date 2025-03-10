
import 'package:get/get.dart';

class HomescreenController extends GetxController {

  var searchText = 'songs'.obs;
  var selectedIndex = 0.obs;

  void updateSelectedIndex(int index,) {
    selectedIndex.value = index;

    if(selectedIndex.value == 0){
      searchText.value = 'songs';
      print(searchText.value);    }
    else if(selectedIndex.value == 1){
      searchText.value = 'albums';
      print(searchText.value);
    }
    else if(selectedIndex.value == 2){
      searchText.value = 'playlists';
      print(searchText.value);
    }
    else{
      searchText.value = 'songs';
    }
  
  }
  
}