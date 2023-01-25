import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:simple_animations/stateless_animation/play_animation.dart';
import 'package:simple_animations/timeline_tween/prop.dart';

class LodoFade extends StatefulWidget {
  const LodoFade({Key? key}) : super(key: key);

  @override
  State<LodoFade> createState() => _LodoFadeState();
}

class _LodoFadeState extends State<LodoFade> {
  @override
  Widget build(BuildContext context) {
    var tween = TimelineTween<Prop>()
      ..addScene(begin: Duration.zero, end: const Duration(milliseconds: 2000))
          .animate(Prop.width, tween: Tween<double>(begin: 0.0, end: 250.0))
          .animate(Prop.height, tween: Tween<double>(begin: 0.0, end: 250.0));

    return PlayAnimation<TimelineValue<Prop>>(
      tween: tween,
      duration: tween.duration, // use absolute duration
      builder: (context, child, value) {
        return Container(
          width: value.get(Prop.width),
          height: value.get(Prop.height),
          child: Image.asset('assets/images/Wdm_logo.jpg'),
        );
      },
    );
  }
}
