import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;
import 'package:flutter/src/widgets/image.dart';
import 'components/animatedButton.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/singInForm.dart';



class OmbordinScreen extends StatefulWidget {
  const OmbordinScreen({super.key});

  @override
  State<OmbordinScreen> createState() => _OmbordinScreenState();
}

class _OmbordinScreenState extends State<OmbordinScreen> {

  late rive.RiveAnimationController _btnanimationController;

  @override
  void initState() {
   _btnanimationController = rive.OneShotAnimation(
       'active',
       autoplay: false,
   );
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            width: MediaQuery.of(context).size.width *1.7,
            bottom: 200,
            left: 100,
            child: Image.asset(
                "assets/samples/ui/rive_app/images/backgrounds/spline.png"
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 20, sigmaY: 20,
              ),
            ),
          ),

          const rive.RiveAnimation.asset("assets/samples/ui/rive_app/rive/shapes.riv"),

          Positioned.fill(
            child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 30, sigmaY: 30,
                ),
              child: const SizedBox(),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),

                  const SizedBox(
                    width: 260,
                    child: Column(
                      children: [
                        Text(
                          "Learn design & code",
                          style: TextStyle(
                            fontSize: 60,
                            fontFamily: 'Poppins',
                            height: 1.2
                          ),
                        ),
                        const SizedBox(height: 16.0,),
                        Text("There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by")
                      ],
                    ),
                  ),
                  const Spacer(flex: 2,),

                  AnimatedButton(
                      btnanimationController: _btnanimationController,
                      press: () {
                        _btnanimationController.isActive = true;
                        showGeneralDialog(
                            context: context,
                            barrierDismissible: true,
                            barrierLabel: "Sing In",
                            //  pageBuilder: (context, Animation, SecondaryAnimation) {
                            pageBuilder: (context, _, __) {
                              return Center(
                                child: Container(
                                  height: 610,
                                  margin: const EdgeInsets.symmetric(horizontal: 16),
                                  padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                                  decoration:  BoxDecoration(
                                    color:  Colors.white.withOpacity(0.90),
                                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                                  ),
                                  child: const Scaffold(
                                    backgroundColor: Colors.transparent,
                                    body: Column(
                                      children: [
                                        Text(
                                            "Sing In",
                                          style: TextStyle(
                                            fontSize: 34,
                                            fontFamily: 'Poppins'
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(vertical: 16.0),
                                          child: Text(
                                              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour",
                                            textAlign: TextAlign.center,
                                          ),
                                        ),

                                        Expanded(child: SingInForm()),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }
                        );
                      }
                  ),
                  const Padding(
                      padding: EdgeInsets.symmetric(vertical: 24),
                    child: Text("There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly"),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}




