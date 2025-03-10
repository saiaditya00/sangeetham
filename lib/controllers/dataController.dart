import 'package:dio/dio.dart';
import 'package:get/get.dart';



class Datacontroller extends GetxController{
  final dio = Dio();
  RxList<dynamic> songs = [].obs;
  RxList<dynamic> albums = [].obs;

   fetchSong(String songName) async {
    try {
      final response = await dio.get('https://saavn.dev/api/search/songs?query=$songName');
    
    
      songs.value = response.data['data']['results'];
      print(songs);
      //print(songs[0]['artists']['primary'][0]['name']);
      
    } catch (e) {
      print(e);
    }

  }



  fetchAlbums(String albumName) async {
    try {
      final response = await dio.get('https://saavn.dev/api/search/albums?query=$albumName');
      print(response.data['data']['results']);
      songs.value = response.data['data']['results'];
    } catch (e) {
      print(e);
    }

  }

  fetchPlaylists(String playlistName) async {
    try {
      final response = await dio.get('https://saavn.dev/api/search/playlists?query=$playlistName');
      print(response.data['data']['results']);
      songs.value = response.data['data']['results'];
    } catch (e) {
      print(e);
    }

  }





  
  
  


  

}