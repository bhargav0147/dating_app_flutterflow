import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/wolk_and_go/wolk_and_go_widget.dart';

// Focus widget keys for this walkthrough
final containerFj5qhccf = GlobalKey();

/// HomePageSlider
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// HomePage
      TargetFocus(
        keyTarget: containerFj5qhccf,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WolkAndGoWidget(),
          ),
        ],
      ),
    ];
