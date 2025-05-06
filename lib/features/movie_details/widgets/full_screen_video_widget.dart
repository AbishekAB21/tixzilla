import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:video_player/video_player.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:tixzilla/utils/themes/themes.dart';
import 'package:tixzilla/features/movie_details/core/providers/movie_details_provier.dart';

class FullscreenVideoPlayer extends ConsumerStatefulWidget {
  final String videoUrl;

  const FullscreenVideoPlayer({super.key, required this.videoUrl});

  @override
  ConsumerState<FullscreenVideoPlayer> createState() =>
      _FullscreenVideoPlayerState();
}

class _FullscreenVideoPlayerState extends ConsumerState<FullscreenVideoPlayer> {
  @override
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    });

    Future.microtask(() {
      ref
          .read(videoPlayerControllerProvider.notifier)
          .initialize(widget.videoUrl);
    });
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    ref.read(videoPlayerControllerProvider.notifier).disposeController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controllerAsync = ref.watch(videoPlayerControllerProvider);

    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          ref.read(videoPlayerControllerProvider.notifier).disposeController();
        }
      },
      child: Scaffold(
        backgroundColor: appcolor.background,
        body: Center(
          child: controllerAsync.when(
            data:
                (controller) => AspectRatio(
                  aspectRatio: controller.value.aspectRatio,
                  child: VideoPlayer(controller),
                ),
            loading:
                () => CircularProgressIndicator(color: appcolor.teritiaryColor),
            error: (err, _) => Text('Error loading video'),
          ),
        ),
      ),
    );
  }
}
