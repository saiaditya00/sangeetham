import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sangeetham/controllers/SongPlayerController.dart';



class AudioPlayerWidget extends StatelessWidget {
  final String songName;
  final String Artist;
  final String imageUrl;
  
  
  

  const AudioPlayerWidget({super.key, required this.songName, required this.Artist, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
   
    Songplayercontroller songplayercontroller = Get.put(Songplayercontroller());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Player', style: TextStyle(color: Colors.black,fontFamily: 'Sahitya', fontSize: 25,fontWeight: FontWeight.bold )),
        
        leading: InkWell(onTap: (){Get.back();},
          child: Icon(Icons.arrow_back,size: 25,)),
        


      ),
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment:   CrossAxisAlignment.center,
          spacing: 30,
          
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 80),
                width: 300,
                height: 300,
                
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  
                ),
                
              ),
            ),
            nametile(songName, Artist),
        
              Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Obx(()=>Text(songplayercontroller.currentTime.toString(), style: TextStyle(color: Colors.black,fontFamily: 'Sahitya', fontSize: 12 )),),
                Expanded(
                  child: 
                    Obx(()=>Slider(
                    activeColor: Colors.black,
                    inactiveColor: Colors.grey,
                    thumbColor: Colors.black,
                  value: songplayercontroller.sliderValue.value.clamp(0.0, songplayercontroller.sliderMaxValue.value), 
                  onChanged: (value) {
                    songplayercontroller.sliderValue.value = value;
                    Duration position = Duration(seconds: value.toInt());
                    songplayercontroller.changeSongSlider(position);

                  },
                  min: 0,
                  max: songplayercontroller.sliderMaxValue.value,
                  ),)
                ),
                Obx(()=>Text(songplayercontroller.totalTime.toString(), style: TextStyle(color: Colors.black,fontFamily: 'Sahitya', fontSize: 12)),),
                ],
              ),
              ),
        
            
          
        
            
        
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 45,
                children: [
                  IconButton(
                    icon: const Icon(Icons.skip_previous, size: 40),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                  
                  Obx(
                  ()=> songplayercontroller.isPlaying.value
                        ? IconButton(
                            icon: const Icon(Icons.pause, size: 40),
                            color: Colors.black,
                            onPressed: () {
                              songplayercontroller.pausePlayer();
                            },
                          )
                        : IconButton(
                            icon: const Icon(Icons.play_arrow, size: 40),
                            color: Colors.black,
                            onPressed: () {
                              songplayercontroller.resumePlayer();
                            },
                          ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.skip_next, size: 40),
                    color: Colors.black,
                    onPressed: () {},
                  ),  
                ],
              ),
            )
          
        
        
          ],
        
        ),
      ),
    );
  }
}



Widget nametile(String songName, String Artist){
  return Container(
    padding: EdgeInsets.all(4),
    decoration: BoxDecoration(
  
      border: Border(bottom: BorderSide(color: Colors.grey),top: BorderSide(color: Colors.grey)),
      
      
    ),
    child: ListTile(
      onTap: (){},
     
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        
      ),
    
     
      
      title: Text(songName, style: TextStyle(color: Colors.black,fontFamily: 'Sahitya', fontSize: 20,fontWeight: FontWeight.bold )),
      subtitle: Text(Artist, style: TextStyle(color: Colors.black,fontFamily: 'Sahitya', fontSize: 15 )),
      
    ),
  );
}