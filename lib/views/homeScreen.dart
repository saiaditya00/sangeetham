import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sangeetham/components/albums.dart';
import 'package:sangeetham/components/playlist.dart';
import 'package:sangeetham/components/songs.dart';
import 'package:sangeetham/controllers/dataController.dart';
import 'package:sangeetham/controllers/homeScreen_Controller.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
 
  final HomescreenController controller = HomescreenController();
  final Datacontroller dataController = Get.put(Datacontroller());

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Sangeetham',
          style: TextStyle(fontFamily: 'Sahitya', fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              tabAlignment: TabAlignment.start,
             dragStartBehavior: DragStartBehavior.start,
              isScrollable: true,
              onTap:(index){
                controller.updateSelectedIndex( index);
                dataController.fetchSong(controller.searchText.toString());
              },
              controller: _tabController,
              tabs: const [
                Tab(child: Text('songs', style: TextStyle(fontFamily: 'Sahitya', fontSize: 22))),
                Tab(child: Text('Albums', style: TextStyle(fontFamily: 'Sahitya', fontSize: 22))),
                Tab(child: Text('Playlists', style: TextStyle(fontFamily: 'Sahitya', fontSize: 22))),
                Tab(child: Text('Artists', style: TextStyle(fontFamily: 'Sahitya', fontSize: 22))), // Add more tabs as needed
                Tab(child: Text('Genres', style: TextStyle(fontFamily: 'Sahitya', fontSize: 22))),
                
                
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Obx(()=>Songs(searchText: controller.searchText.toString()),),
          Obx(()=>albums( controller.searchText.toString()),),
          Obx(()=>playlists( controller.searchText.toString()),),
          Obx(() => Center(child: Text('Artists'))), // Add corresponding views for the new tabs
          Obx(() => Center(child: Text('Genres'))),
        ],
      ),
      
    );
  }
}