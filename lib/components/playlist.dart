import 'package:flutter/material.dart';
import 'package:sangeetham/components/searchbar.dart';

Widget playlists(String playlistText) {
  return Center(
    child: Column(
      children: [
        searchBar(playlistText),
        
      ],
    ),
  );
}