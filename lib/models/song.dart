class Song {
  final String title;
  final String artist;
  final String url;

  Song({required this.title, required this.artist, required this.url});

  factory Song.fromJson(Map<String, dynamic> json) {
    return Song(
      title: json['name'] as String,
      artist: json['artist']['primary']['name'] as String,
      url: json['url'] as String,
    );
  }
}