import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;

class AnimatedButton extends StatelessWidget {
  const AnimatedButton({
    super.key,
    required rive.RiveAnimationController btnanimationController, required this.press,
  }) : _btnanimationController = btnanimationController;

  final rive.RiveAnimationController _btnanimationController;
  final VoidCallback press;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        height: 64,
        width: 260,
        child: Stack(children:
        [
          rive.RiveAnimation.asset(
            "assets/samples/ui/rive_app/rive/button.riv",
            controllers: [_btnanimationController],
          ),
          const Positioned.fill(
            top: 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(CupertinoIcons.arrow_right),
                const SizedBox(width: 8,),
                Text(
                  "Start the course",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
        ),
      ),
    );
  }
}