



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sangeetham/components/listTile.dart';

import 'package:sangeetham/components/searchbar.dart';
import 'package:sangeetham/controllers/SongPlayerController.dart';
import 'package:sangeetham/controllers/dataController.dart';
import 'package:sangeetham/views/player.dart';

Widget albums(String searchText) {
  final Datacontroller dataController = Get.find<Datacontroller>();
  final Songplayercontroller songplayercontroller =
      Get.put(Songplayercontroller());

  return Center(
    child: Column(
      children: [
        searchBar(searchText),
        Obx(
          () => ListView.builder(
            itemBuilder: (context, index) => SongTile(
              songName: dataController.albums[index]['name'],
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Center(child: Text("album info"))));
              },
            ),
            itemCount: dataController.albums.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
          ),
        ),

        

 
   
      ],
    ),
  );
}