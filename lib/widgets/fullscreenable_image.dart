import 'package:flutter/material.dart';

import '../pages/media_view.dart';
import '../util/goto.dart';

/// If the media is pressed, it opens itself in a [MediaViewPage]
class FullscreenableImage extends StatelessWidget {
  final String url;
  final Widget child;

  const FullscreenableImage({
    super.key,
    required this.url,
    required this.child,
  });

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () => goToMedia(context, url),
        child: child,
        // FIXME: MYKL had to disable Heroing as duplicate tags exist
        // which causes error on iOS
        //  Hero(
        //   tag: url,
        //   child: child,
        // ),
      );
}
