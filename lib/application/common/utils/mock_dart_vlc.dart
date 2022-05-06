import 'package:flutter/widgets.dart';

class Player {
  Player({required int id});

  void open(vlcMedia, {bool autoStart = false}) {}

  void play() {}

  void pause() {}

  void stop() {}

  void seek(Duration position) {}

  void dispose() {}

  void setRate(double speed) {}

  void setVolume(double volume) {}
}

class Media {
  static asset(String resource) {}

  static network(String resource) {}
}

class PositionState {
  get position => null;

  get duration => null;

  bool get isCompleted => false;
}

class CurrentState {
  int? index;

  Media? media;

  List<Media> medias = <Media>[];

  bool isPlaylist = false;
}

class PlaybackState {
  bool isPlaying = false;

  bool isSeekable = true;

  bool isCompleted = false;
}

class DartVLC {
  static void initialize() {}
}

class Video extends StatelessWidget {
  const Video({
    Key? key,
    double? width,
    double? height,
    Player? player,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}
