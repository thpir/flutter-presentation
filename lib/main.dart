import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_intro/howest_style.dart';
import 'package:flutter_intro/slides/01_introduction/introduction_slide_000_welcome.dart';
import 'package:flutter_intro/slides/01_introduction/introduction_slide_001_about_me.dart';
import 'package:flutter_intro/slides/01_introduction/introduction_slide_003_introduction_title.dart';
import 'package:flutter_intro/slides/01_introduction/introduction_slide_006_meet_flutter.dart';
import 'package:flutter_intro/slides/01_introduction/introduction_slide_002_todays_journey.dart';
import 'package:flutter_intro/slides/01_introduction/introduction_slide_007_flutter_by_the_numbers.dart';
import 'package:flutter_intro/slides/01_introduction/introduction_slide_004_mobile_dev_landscape_in_2025.dart';
import 'package:flutter_intro/slides/01_introduction/introduction_slide_005_modern_cross_platform_frameworks.dart';
import 'package:flutter_intro/slides/01_introduction/introduction_slide_008_timeline.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_000_ff_title.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_001_what_is_flutter.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_003_frame_rate.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_004_smooth_animations.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_007_dart_compiler.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_008_meet_dart.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_002_performant_on_every_device.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_005_hot_reload.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_006_flexible.dart';
import 'package:flutter_intro/slides/01_introduction/introduction_slide_009_made_with_flutter.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_009_core_concepts_widgets.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_010_core_concepts_packages.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_011_core_concepts_platform_channels.dart';
import 'package:flutter_intro/slides/03_flutter_at_howest/flutter_at_howest_slide_000_fah_title.dart';
import 'package:flutter_intro/slides/03_flutter_at_howest/flutter_at_howest_slide_001_lambrecht_info.dart';
import 'package:flutter_intro/slides/03_flutter_at_howest/flutter_at_howest_slide_002_lambrecht_tag_reader.dart';
import 'package:flutter_intro/slides/03_flutter_at_howest/flutter_at_howest_slide_003_lambrecht_problem.dart';
import 'package:flutter_intro/slides/03_flutter_at_howest/flutter_at_howest_slide_004_lambrecht_solution.dart';
import 'package:flutter_intro/slides/03_flutter_at_howest/flutter_at_howest_slide_005_yet_info.dart';
import 'package:flutter_intro/slides/03_flutter_at_howest/flutter_at_howest_slide_006_yet_collages.dart';
import 'package:flutter_intro/slides/03_flutter_at_howest/flutter_at_howest_slide_007_yet_challenges.dart';
import 'package:flutter_intro/slides/03_flutter_at_howest/flutter_at_howest_slide_008_yet_ai_intro.dart';
import 'package:flutter_intro/slides/03_flutter_at_howest/flutter_at_howest_slide_009_what_is_gen_ai.dart';
import 'package:flutter_intro/slides/03_flutter_at_howest/flutter_at_howest_slide_010_what_is_gen_ai_2.dart';
import 'package:flutter_intro/slides/03_flutter_at_howest/flutter_at_howest_slide_011_gen_ai_applied.dart';
import 'package:flutter_intro/slides/03_flutter_at_howest/flutter_at_howest_slide_012_drawing_with_custom_paint.dart';
import 'package:flutter_intro/slides/03_flutter_at_howest/flutter_at_howest_slide_013_creating_the_mask.dart';
import 'package:flutter_intro/slides/03_flutter_at_howest/flutter_at_howest_slide_014_capturing_the_mask.dart';
import 'package:flutter_intro/slides/03_flutter_at_howest/flutter_at_howest_slide_015_yet_ai_demo.dart';
import 'package:flutter_intro/slides/04_beyond_frond_end/bfe_slide_000_bfe_title.dart';
import 'package:flutter_intro/slides/05_wrap_up/wrap_up_slide_000_wrap_up_title.dart';
import 'package:flutter_intro/slides/04_beyond_frond_end/bfe_slide_001_flame_demo.dart';
import 'package:flutter_intro/slides/05_wrap_up/wrap_up_slide_001_getting_started_codelabs.dart';
import 'package:flutter_intro/slides/05_wrap_up/wrap_up_slide_002_when_flutter.dart';
import 'package:flutter_intro/slides/05_wrap_up/wrap_up_slide_003_questions_answers.dart';
import 'package:flutter_intro/templates/howest_content_slide.dart';
import 'package:flutter_intro/templates/howest_subtitle_slide.dart';
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
      configuration: FlutterDeckConfiguration(
        background: const FlutterDeckBackgroundConfiguration(
            light: FlutterDeckBackground.gradient(LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.centerRight,
                stops: [
              0.2,
              0.2
            ],
                colors: [
              HowestStyle.backgroundColor,
              HowestStyle.primaryColor
            ]))),
        controls: const FlutterDeckControlsConfiguration(
          presenterToolbarVisible: true,
          shortcuts: FlutterDeckShortcutsConfiguration(
            enabled: true,
            nextSlide: SingleActivator(LogicalKeyboardKey.arrowRight),
            previousSlide: SingleActivator(LogicalKeyboardKey.arrowLeft),
            toggleMarker: SingleActivator(
              LogicalKeyboardKey.keyM,
              control: true,
              meta: true,
            ),
            toggleNavigationDrawer: SingleActivator(
              LogicalKeyboardKey.period,
              control: true,
              meta: true,
            ),
          ),
        ),
        footer: const FlutterDeckFooterConfiguration(
          showSlideNumbers: false,
        ),
        header: const FlutterDeckHeaderConfiguration(
          showHeader: false,
        ),
        marker: const FlutterDeckMarkerConfiguration(
          color: Colors.white,
          strokeWidth: 8.0,
        ),
        slideSize: FlutterDeckSlideSize.fromAspectRatio(
          aspectRatio: const FlutterDeckAspectRatio.ratio16x10(),
        ),
        transition: const FlutterDeckTransition.fade(),
      ),
      slides: [
        /// Introduction slides
        HowestTitleSlide(
            slideContent: const SlideWelcome(), route: '/slideWelcome'),
        HowestContentSlide(
            title: '(base) thijspirmez@C1JPJXV4H2 ~ % whoami',
            titleIconPath: 'assets/images/flutter_logo.png',
            slideContent: AboutMe(),
            pageNumber: '2',
            route: '/aboutMe'),
        HowestTitleSlide(
            slideContent: const TodaysJourney(), route: '/slideTodaysJourney'),
        HowestTitleSlide(
          slideContent: const IntroductionTitle(),
          route: '/introductionTitle',
        ),
        HowestContentSlide(
          title: 'The Mobile Development Landscape in 2025',
          titleIconPath: 'assets/images/flutter_logo.png',
          slideContent: const MobileDevLandscapeIn2025(),
          pageNumber: '5',
          route: '/mobileDevLandscapeIn2025',
          background: Image.asset(
            'assets/images/mobile_dev_landscape_2025_bg.jpg',
            fit: BoxFit.cover,
          ),
          backgroundOverlay: HowestStyle.backgroundColor.withAlpha(170),
        ),
        HowestContentSlide(
          title: 'Cross-platform: frameworks',
          titleIconPath: 'assets/images/flutter_logo.png',
          slideContent: ModernCrossPlatformFrameworks(),
          pageNumber: '6',
          route: '/modernCrossPlatformFrameworks',
          backgroundOverlay: Colors.transparent,
        ),
        HowestContentSlide(
          title: "Meet Flutter: Google's revolutionary UI toolkit",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const MeetFlutter(),
          pageNumber: "7",
          route: '/meetFlutter',
        ),
        HowestContentSlide(
          title: "Flutter by the Numbers: Industry Adoption & Success Metrics",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const FlutterByTheNumbers(),
          pageNumber: "8",
          route: '/flutterByTheNumbers',
        ),
        HowestContentSlide(
            title: "A brief history...",
            titleIconPath: "assets/images/flutter_logo.png",
            slideContent: const Timeline(),
            pageNumber: "9",
            route: '/timeline'),
        HowestContentSlide(
          title: "Made with Flutter",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const MadeWithFlutter(),
          pageNumber: "10",
          route: '/madeWithFlutter',
        ),

        /// Flutter Fundamentals slides
        HowestTitleSlide(
            slideContent: const FlutterFundamentalsTitle(),
            route: '/flutterFundamentalsTitle'),
        HowestContentSlide(
          title: "What is Flutter? Cross-platform beyond mobile",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const WhatIsFlutter(),
          pageNumber: "12",
          route: '/flutterFundamentals',
        ),
        HowestContentSlide(
          title: "Why Flutter? - fast",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const FlutterFast(),
          pageNumber: "13",
          route: '/flutterFast',
        ),
        HowestContentSlide(
          title: "60fps & 120fps: Smooth Animations Across Devices",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const FlutterFrameRate(),
          pageNumber: "14",
          route: '/flutterFrameRate',
        ),
        HowestContentSlide(
          title: "Smooth Animations - demo",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const SmoothAnimations(),
          pageNumber: "15",
          route: '/smoothAnimations',
        ),
        HowestContentSlide(
          title: "Why Flutter? - Hot reload",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const HotReload(),
          pageNumber: "16",
          route: '/hotReload',
        ),
        HowestContentSlide(
          title: "Why Flutter? - Flexible",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const FlutterFlexible(),
          pageNumber: "17",
          route: '/flutterFlexible',
        ),
        HowestContentSlide(
          title: "The Dart compiler: Write Once, Deploy Everywhere",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const DartCompiler(),
          pageNumber: "18",
          route: '/dartCompiler',
        ),
        HowestContentSlide(
          title: "Meet Dart: The Language Powering Flutter",
          titleIconPath: "assets/images/dart_logo.png",
          slideContent: const MeetDart(),
          pageNumber: "19",
          route: '/meetDart',
        ),
        HowestContentSlide(
          title: "Core concepts: widgets",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const Slide010(),
          pageNumber: "20",
          route: '/coreConceptsWidgets',
        ),
        HowestContentSlide(
          title: "Core concepts: packages",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const CoreConceptsPackages(),
          pageNumber: "21",
          route: '/coreConceptsPackages',
        ),
        HowestContentSlide(
          title: "Core concepts: Platform channels",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const CoreConceptsPlatformChannels(),
          pageNumber: "22",
          route: '/platformChannels',
        ),

        /// Beyond front-end slides
        HowestTitleSlide(
            slideContent: const BfeTitle(), route: '/bfeTitle'),
        HowestContentSlide(
          title: "Dart beyond Flutter - Flutter Flame demo",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const FlameDemo(),
          pageNumber: "24",
          route: '/flameDemo',
        ),

        /// Flutter at Howest slides
        HowestTitleSlide(
          slideContent: const FahTitle(), 
          route: '/flutterAtHowestTitle'),
        HowestContentSlide(
          title: "Flutter @ Howest - project Lambrecht - Introduction",
          titleIconPath: "assets/images/icon_siloconnect2.webp",
          slideContent: const LambrechtInfo(),
          pageNumber: "26",
          route: '/lambrechtIntro',
        ),
        HowestContentSlide(
          title: "Flutter @ Howest - project Lambrecht - Tag reader",
          titleIconPath: "assets/images/icon_siloconnect2.webp",
          slideContent: const LambrechtTagReader(),
          pageNumber: "27",
          route: '/lambrechtTagReader',
        ),
        HowestContentSlide(
          title: "Flutter @ Howest - project Lambrecht - The problem",
          titleIconPath: "assets/images/icon_siloconnect2.webp",
          slideContent: const LambrechtProblem(),
          pageNumber: "28",
          route: '/lambrechtProblem',
        ),
        HowestContentSlide(
          title: "Flutter @ Howest - project Lambrecht - The solution",
          titleIconPath: "assets/images/icon_siloconnect2.webp",
          slideContent: const LambrechtSolution(),
          pageNumber: "29",
          route: '/lambrechtSolution',
        ),
        HowestContentSlide(
          title: "Flutter @ Howest - YET - Introduction",
          titleIconPath: "assets/images/icon_yet.png",
          slideContent: const YetInfo(),
          pageNumber: "30",
          route: '/yetInfo',
        ),
        HowestContentSlide(
          title: "Flutter @ Howest - YET - Create digital collages",
          background: Image.asset("assets/images/yet_collages_background.jpg", fit: BoxFit.cover),
          backgroundOverlay: HowestStyle.backgroundColor.withAlpha(170),
          titleIconPath: "assets/images/icon_yet.png",
          slideContent: const YetCollages(),
          pageNumber: "31",
          route: '/yetCollages',
        ),
        HowestContentSlide(
          title: "Flutter @ Howest - YET - Challenges",
          titleIconPath: "assets/images/icon_yet.png",
          slideContent: const YetChallenges(),
          pageNumber: "32",
          route: '/yetChallenges',
        ),
        HowestContentSlide(
          title: "Flutter @ Howest - YET - AI integration",
          titleIconPath: "assets/images/icon_yet.png",
          slideContent: const YetAiIntro(),
          pageNumber: "33",
          route: '/yetAiIntro',
        ),
        HowestSubtitleSlide(
          slideContent: const WhatIsGenAi(), route: '/whatIsGenAi'),
        HowestSubtitleSlide(
          slideContent: const WhatIsGenAI2(),
          route: '/whatIsGenAi2',
        ),
        HowestContentSlide(
          title: "Flutter @ Howest - YET - How to apply GenAI",
          titleIconPath: "assets/images/icon_yet.png",
          slideContent: const GenAiApplied(),
          pageNumber: "36",
          route: '/genAiApplied',
        ),
        HowestContentSlide(
          title: "Flutter @ Howest - YET - Drawing with Flutter's CustomPaint",
          titleIconPath: "assets/images/icon_yet.png",
          slideContent: const DrawingWithCustomPaint(),
          pageNumber: "37",
          route: '/genAiInFlutterPaint',
        ),
        HowestContentSlide(
          title: "Flutter @ Howest - YET - Creating the Mask in Flutter",
          titleIconPath: "assets/images/icon_yet.png",
          slideContent: const CreatingTheMask(),
          pageNumber: "38",
          route: '/creatingTheMask',
        ),
        HowestContentSlide(
          title: "Flutter @ Howest - YET - Capturing the Mask in Flutter",
          titleIconPath: "assets/images/icon_yet.png",
          slideContent: const CapturingTheMask(),
          pageNumber: "39",
          route: '/capturingTheMask',
        ),
        HowestSubtitleSlide(
          slideContent: YetAiDemo(), route: "/yetAiDemo"),

        /// Wrap-up slides
        HowestTitleSlide(
            slideContent: const WrapUpTitle(), 
            route: '/wrapUpTitle'),
        HowestContentSlide(
          title: "Getting starded - codelabs",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const GettingStartedCodelabs(),
          pageNumber: "41",
          route: '/gettingStarted',
        ),
        HowestContentSlide(
          title: "When native, when Flutter?",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const WhenFlutter(),
          pageNumber: "42",
          route: '/whenFlutter',
        ),
        HowestSubtitleSlide(
          slideContent: const QuestionsAnswers(), 
          route: '/questionsAnswers'),
      ],
    );
  }
}