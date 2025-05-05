import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerControllerNotifier extends AsyncNotifier<VideoPlayerController> {
  @override
Future<VideoPlayerController> build() async {
  // Just return a dummy Future that never resolves
  final completer = Completer<VideoPlayerController>();
  return completer.future;
}


  Future<void> initialize(String videoUrl) async {
    // TODO : Change to network once firebase is installed
    final controller = VideoPlayerController.asset(videoUrl);
    await controller.initialize();
    state = AsyncValue.data(controller);
    controller.play();
  }

  void disposeController() {
    state.value?.dispose();
  }
}

final videoPlayerControllerProvider =
    AsyncNotifierProvider<VideoPlayerControllerNotifier, VideoPlayerController>(
        VideoPlayerControllerNotifier.new);
