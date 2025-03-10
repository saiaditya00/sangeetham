import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sangeetham/components/listTile.dart';

import 'package:sangeetham/components/searchbar.dart';
import 'package:sangeetham/controllers/SongPlayerController.dart';
import 'package:sangeetham/controllers/dataController.dart';
import 'package:sangeetham/views/player.dart';

class Songs extends StatelessWidget {
  final String searchText;

  const Songs({super.key, required this.searchText});

  @override
  Widget build(BuildContext context) {
    final Datacontroller dataController = Get.put(Datacontroller());
    Songplayercontroller songplayercontroller = Get.put(Songplayercontroller());
    return SingleChildScrollView(
      child: Column(
        children: [
          searchBar(searchText),
          Obx(
            () => ListView.builder(
              itemBuilder: (context, index) => SongTile(
                songName: dataController.songs[index]['name'],
                onPress: () {
                  songplayercontroller.playSong(
                      dataController.songs[index]['downloadUrl'][4]['url']);
                  Get.to(AudioPlayerWidget(
                    songName: dataController.songs[index]['name'],
                    Artist: dataController.songs[index]['artists']['primary'][0]
                        ['name'],
                    imageUrl: dataController.songs[index]['image'][2]['url'],
                  ));
                },
              ),
              itemCount: dataController.songs.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
            ),
          ),
        ],
      ),
    );
  }
}
