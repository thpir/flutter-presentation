import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';
import 'package:lottie/lottie.dart';
import 'package:rive/rive.dart';

class SmoothAnimations extends StatefulWidget {
  const SmoothAnimations({super.key});

  @override
  State<SmoothAnimations> createState() => _SmoothAnimationsState();
}

class _SmoothAnimationsState extends State<SmoothAnimations> {
  // Flutter implicit animation example
  double _scale = 1.0;
  // Rive animation example
  Artboard? _riveArtboard;
  SMINumber? _levelInput;

  @override
  void initState() {
    super.initState();
    _loadRiveFile();
  }

  Future<void> _loadRiveFile() async {
    final file = await RiveFile.asset('assets/animations/skills.riv');
    final artboard = file.mainArtboard.instance();
    var controller =
        StateMachineController.fromArtboard(artboard, 'Designer\'s Test');
    if (controller != null) {
      artboard.addController(controller);
      _levelInput = controller.getNumberInput('Level');
    }
    setState(() => _riveArtboard = artboard);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 40,
      children: [
        Expanded(
          child: Row(
            spacing: 40,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 120.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    spacing: 10,
                    children: [
                      Text(
                        "Implicit and explicit animations directly in Flutter",
                        style: HowestStyle.howestTextTheme.bodySmall.copyWith(
                          color: HowestStyle.primaryTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _scale = _scale == 1.0 ? 1.5 : 1.0;
                            });
                          },
                          child: AnimatedScale(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                            scale: _scale,
                            child: const FlutterLogo(size: 200),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 120.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    spacing: 10,
                    children: [
                      Text(
                        "3rd party packages for example: Lottie",
                        style: HowestStyle.howestTextTheme.bodySmall.copyWith(
                          color: HowestStyle.primaryTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Expanded(
                        child: Lottie.asset(
                          'assets/animations/waiting_animation.json',
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            spacing: 10,
            children: [
              Text(
                "Rive - Advanced animations with interactions",
                style: HowestStyle.howestTextTheme.bodySmall.copyWith(
                  color: HowestStyle.primaryTextColor,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Expanded(child: _riveArtboard != null
                  ? SizedBox.expand(
                      child: InkWell(
                        onTap: () {
                          _levelInput?.value = _levelInput?.value == 2 ? 0 : (_levelInput!.value + 1);
                        },
                        child: Rive(
                          artboard: _riveArtboard!,
                          fit: BoxFit.contain,
                        ),
                      ),
                    )
                  : const Center(
                      child: CircularProgressIndicator(),
                    ),)
            ],
          ),
        ),
      ],
    );
  }
}
