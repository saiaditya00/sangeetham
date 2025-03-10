


import 'package:flutter/material.dart';

class SongTile extends StatelessWidget {
  final String songName;
  final VoidCallback onPress;
  const SongTile({super.key,required this.songName,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black)
        
        ),
        child: ListTile(
              leading: Icon(Icons.play_arrow, size: 30),
              title: Text(
              songName,
              maxLines: 1,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Sahitya',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),      ),
      );

      }
    
  }

