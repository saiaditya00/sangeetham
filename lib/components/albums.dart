



import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sangeetham/components/searchbar.dart';
import 'package:sangeetham/controllers/dataController.dart';

Widget albums(String searchText) {
  Get.put(Datacontroller());
  return Center(
    child: Column(
      children: [
        searchBar(searchText),
        

 
   
      ],
    ),
  );
}