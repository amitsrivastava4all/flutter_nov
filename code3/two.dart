void main() {
  Map<String, Function> map = songOperations();
  Function addNewSong = map['addNewSong'];
  Function printSongs = map['printSongs'];
  Function filterSongs = map['filterSongs'];
  print(addNewSong('Boom Boom') ? 'Song Added' : 'Not Added');
  print(addNewSong('Bang Bang') ? 'Song Added' : 'Not Added');
  print("@@@@@@@@@@@@@@@@@@@@@@@@@");
  printSongs();
  print("###################");
  filterSongs();
}

Map<String, Function> songOperations() {
  List<String> songs = ["It's My Life", "Bang Bang"];

  bool addNewSong(String songName) {
    if (songs.contains(songName)) {
      return false;
    } else {
      songs.add(songName);
      return true;
    }
  }

  void filterSongs() {
    songs
        .where((String songName) => songName.startsWith("B"))
        .forEach((String song) => print(song));
  }

  void printSongs() {
    // for (int i = 0; i < songs.length; i++) {
    //   print(songs[i]);
    // }
    // for (String song in songs) {
    //   print(song);
    // }
    print("Songs are $songs");
    songs.forEach((String song) => print(song));
  }

  return {
    "addNewSong": addNewSong,
    "printSongs": printSongs,
    "filterSongs": filterSongs
  };
}
