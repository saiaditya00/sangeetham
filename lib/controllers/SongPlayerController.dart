
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';


class Songplayercontroller extends GetxController{
  final player = AudioPlayer();
  final isPlaying = false.obs;
  RxString currentTime = '0'.obs;
  RxString totalTime = '0'.obs;
  RxDouble sliderValue = 0.0.obs;
  RxDouble sliderMaxValue = 0.0.obs;



  void playSong(String url) async {
    await player.setUrl(url);
    player.play();
    updatePosition();
    isPlaying.value = true;
  }

  void stopPlayer() {
    player.stop();
    isPlaying.value = false;
  }

  void pausePlayer() {
    player.pause();
    isPlaying.value = false;
  }

  void resumePlayer() {
    player.play();
    isPlaying.value = true;
  }

  void changeSongSlider(Duration position) {
    player.seek(position);
  }

  void updatePosition() async{
    try{
      player.durationStream.listen((d) {
        totalTime.value = d.toString().split(".")[0];
        sliderMaxValue.value = d!.inSeconds.toDouble();
      });
      player.positionStream.listen((p) {
        currentTime.value = p.toString().split(".")[0];
        sliderValue.value = p.inSeconds.toDouble();
      });

    }catch(e){
      print(e);
    }

  
  }

  










}