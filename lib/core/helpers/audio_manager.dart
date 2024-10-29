import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';

class AudioManager {
  final AudioPlayer _audioPlayer = AudioPlayer();

  /// Plays audio from a local file.
  Future<void> playLocalAudio(String filePath) async {
    try {
      await _audioPlayer.play(
        AssetSource(filePath),
      );
    } catch (e) {
      debugPrint("Error playing local audio: $e");
    }
  }

  /// Plays audio from a remote URL.
  Future<void> playRemoteAudio(String url) async {
    try {
      await _audioPlayer.play(UrlSource(url));
    } catch (e) {
      debugPrint("Error playing remote audio: $e");
    }
  }

  /// Pauses the audio playback.
  Future<void> pauseAudio() async {
    try {
      await _audioPlayer.pause();
    } catch (e) {
      debugPrint("Error pausing audio: $e");
    }
  }

  /// Stops the audio playback.
  Future<void> stopAudio() async {
    try {
      await _audioPlayer.stop();
    } catch (e) {
      debugPrint("Error stopping audio: $e");
    }
  }

  /// Releases audio resources. Call this when done with the player.
  Future<void> dispose() async {
    try {
      await _audioPlayer.dispose();
    } catch (e) {
      debugPrint("Error disposing audio player: $e");
    }
  }
}
