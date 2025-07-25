import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:sangeetham/controllers/dataController.dart';

Widget searchBar(String searchText) {
  final Datacontroller dataController = Get.put(Datacontroller());
  final TextEditingController searchController = TextEditingController();
  return Container(
    
    margin: EdgeInsets.symmetric(horizontal: 10),
    padding: EdgeInsets.only(top: 10),
    child: TextField(
    
      decoration: InputDecoration(
        fillColor:const Color.fromARGB(255, 206, 195, 195) ,
        hoverColor: const Color.fromARGB(255, 206, 195, 195),
        focusColor: const Color.fromARGB(255, 206, 195, 195),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.black, width: 2),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.black, width: 2),
      ),
      hintStyle: TextStyle(
        fontFamily: 'Sahitya',
      ),
      hintText: 'Search for $searchText',
      prefixIcon: Icon(Icons.search),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      ),
      onSubmitted: (String value) {
      debugPrint(value);
      if (searchText == 'Songs') {
        dataController.fetchSong(searchController.text.toString());
      } else if (searchText == 'Albums') {
        dataController.fetchAlbums(searchController.text.toString());
      } else if (searchText == 'Playlists') {
        dataController.fetchPlaylists(searchController.text.toString());
      }
      dataController.fetchSong(searchController.text.toString());
      },
      controller: searchController,
    ),
  );
}
