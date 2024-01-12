import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_intro/howest_style.dart';
import 'package:flutter_intro/slides/slide_000.dart';
import 'package:flutter_intro/slides/slide_001.dart';
import 'package:flutter_intro/slides/slide_002.dart';
import 'package:flutter_intro/slides/slide_003.dart';
import 'package:flutter_intro/slides/slide_004.dart';
import 'package:flutter_intro/slides/slide_005.dart';
import 'package:flutter_intro/slides/slide_006.dart';
import 'package:flutter_intro/slides/slide_007.dart';
import 'package:flutter_intro/slides/slide_008.dart';
import 'package:flutter_intro/slides/slide_009.dart';
import 'package:flutter_intro/slides/slide_010.dart';
import 'package:flutter_intro/slides/slide_011.dart';
import 'package:flutter_intro/slides/slide_012.dart';
import 'package:flutter_intro/slides/slide_013.dart';
import 'package:flutter_intro/slides/slide_014.dart';
import 'package:flutter_intro/templates/howest_content_slide.dart';
import 'package:flutter_intro/templates/howest_title_slide.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FlutterDeckApp(
        configuration: const FlutterDeckConfiguration(
          background: FlutterDeckBackgroundConfiguration(
            light: FlutterDeckBackground.gradient(
               LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.centerRight,
                stops: [0.2, 0.2],
                colors: [
                  HowestStyle.backgroundColor,
                  HowestStyle.primaryColor
                ]
              )
            )
          ),
          controls: FlutterDeckControlsConfiguration(
            nextKey: LogicalKeyboardKey.arrowRight,
            previousKey: LogicalKeyboardKey.arrowLeft,
            openDrawerKey: LogicalKeyboardKey.arrowUp,
            toggleMarkerKey: LogicalKeyboardKey.keyM,
          ),
          footer: FlutterDeckFooterConfiguration(
            showSlideNumbers: false,
          ),
          header: FlutterDeckHeaderConfiguration(
            showHeader: false,
          ),
          marker: FlutterDeckMarkerConfiguration(
            color: Colors.white,
            strokeWidth: 8.0,
          ),
          transition: FlutterDeckTransition.fade(),
        ), 
        slides: [
          HowestTitleSlide(
            slideContent: const Slide000(),
          ),
          HowestContentSlide(
            title: "Wat is Flutter?",
            titleIconPath: "assets/images/flutter_logo.png",
            slideContent: const Slide001(),
            pageNumber: "1",
            route: '/slide001',
          ),
          HowestContentSlide(
            title: "Waarom Flutter?",
            titleIconPath: "assets/images/flutter_logo.png",
            slideContent: const Slide002(),
            pageNumber: "2",
            route: '/slide002',
          ),
          HowestContentSlide(
            title: "Multi-Platform",
            titleIconPath: "assets/images/flutter_logo.png",
            slideContent: const Slide003(),
            pageNumber: "3",
            route: '/slide003',
          ),
          HowestContentSlide(
            title: "Dart's compiler",
            titleIconPath: "assets/images/flutter_logo.png",
            slideContent: const Slide004(),
            pageNumber: "4",
            route: '/slide004',
          ),
          HowestContentSlide(
            title: "Dart",
            titleIconPath: "assets/images/dart_logo.png",
            slideContent: const Slide005(),
            pageNumber: "5",
            route: '/slide005',
          ),
          HowestContentSlide(
            title: "Waarom Flutter? - Snel",
            titleIconPath: "assets/images/flutter_logo.png",
            slideContent: const Slide006(),
            pageNumber: "6",
            route: '/slide006',
          ),
          HowestContentSlide(
            title: "Waarom Flutter? - Hot reload",
            titleIconPath: "assets/images/flutter_logo.png",
            slideContent: const Slide007(),
            pageNumber: "7",
            route: '/slide007',
          ),
          HowestContentSlide(
            title: "Waarom Flutter? - Flexibel",
            titleIconPath: "assets/images/flutter_logo.png",
            slideContent: const Slide008(),
            pageNumber: "8",
            route: '/slide008',
          ),
          HowestContentSlide(
            title: "Made with Flutter",
            titleIconPath: "assets/images/flutter_logo.png",
            slideContent: const Slide009(),
            pageNumber: "9",
            route: '/slide009',
          ),
          HowestContentSlide(
            title: "Widgets",
            titleIconPath: "assets/images/flutter_logo.png",
            slideContent: const Slide010(),
            pageNumber: "10",
            route: '/slide010',
          ),
          HowestContentSlide(
            title: "Packages",
            titleIconPath: "assets/images/flutter_logo.png",
            slideContent: const Slide011(),
            pageNumber: "11",
            route: '/slide011',
          ),
          HowestContentSlide(
            title: "Platform-specific code",
            titleIconPath: "assets/images/flutter_logo.png",
            slideContent: const Slide012(),
            pageNumber: "12",
            route: '/slide012',
          ),
          HowestContentSlide(
            title: "Game-development - Flutter Flame",
            titleIconPath: "assets/images/flutter_logo.png",
            slideContent: const Slide013(),
            pageNumber: "13",
            route: '/slide013',
          ),
          HowestContentSlide(
            title: "Slide 14",
            titleIconPath: "assets/images/flutter_logo.png",
            slideContent: const Slide014(),
            pageNumber: "14",
            route: '/slide014',
          ),
        ], 
    );
  }
}
