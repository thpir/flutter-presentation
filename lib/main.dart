import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_intro/howest_style.dart';
import 'package:flutter_intro/slides/01_introduction/introduction_slide_000_welcome.dart';
import 'package:flutter_intro/slides/01_introduction/introduction_slide_001_about_me.dart';
import 'package:flutter_intro/slides/01_introduction/introduction_slide_003_introduction_title.dart';
import 'package:flutter_intro/slides/01_introduction/introduction_slide_006_meet_flutter.dart';
import 'package:flutter_intro/slides/01_introduction/introduction_slide_002_todays_journey.dart';
import 'package:flutter_intro/slides/01_introduction/introduction_slide_007_where_flutter_stands_out.dart';
import 'package:flutter_intro/slides/01_introduction/introduction_slide_008_flutter_by_the_numbers.dart';
import 'package:flutter_intro/slides/01_introduction/introduction_slide_004_mobile_dev_landscape_in_2025.dart';
import 'package:flutter_intro/slides/01_introduction/introduction_slide_005_modern_cross_platform_frameworks.dart';
import 'package:flutter_intro/slides/01_introduction/introduction_slide_009_timeline.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_000_ff_title.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_001_what_is_flutter.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_002_flutter_industrial.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_004_frame_rate.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_005_smooth_animations.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_008_dart_compiler.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_009_meet_dart.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_003_performant_on_every_device.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_006_hot_reload.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_007_flexible.dart';
import 'package:flutter_intro/slides/01_introduction/introduction_slide_010_made_with_flutter.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_010_core_concepts_widgets.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_011_stateless_stateful.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_013_global_state.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_014_create_a_new_project.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_015_counter_app.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_012_stateless_stateful_code.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_016_trees_in_flutter.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_017_counter_app_widget_tree.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_018_core_concepts_packages.dart';
import 'package:flutter_intro/slides/02_flutter_fundamentals/ff_slide_019_core_concepts_platform_channels.dart';
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
import 'package:flutter_intro/slides/04_beyond_frond_end/bfe_slide_001_flame_engine.dart';
import 'package:flutter_intro/slides/04_beyond_frond_end/bfe_slide_004_jaspr_framework.dart';
import 'package:flutter_intro/slides/04_beyond_frond_end/bfe_slide_003_jaspr_introduction.dart';
import 'package:flutter_intro/slides/04_beyond_frond_end/bfe_slide_005_jaspr_benefits.dart';
import 'package:flutter_intro/slides/05_wrap_up/wrap_up_slide_000_wrap_up_title.dart';
import 'package:flutter_intro/slides/04_beyond_frond_end/bfe_slide_002_flame_demo.dart';
import 'package:flutter_intro/slides/05_wrap_up/wrap_up_slide_002_getting_started_codelabs.dart';
import 'package:flutter_intro/slides/05_wrap_up/wrap_up_slide_001_when_flutter.dart';
import 'package:flutter_intro/slides/05_wrap_up/wrap_up_slide_003_start_to_flutter.dart';
import 'package:flutter_intro/slides/05_wrap_up/wrap_up_slide_004_join_community.dart';
import 'package:flutter_intro/slides/05_wrap_up/wrap_up_slide_005_questions_answers.dart';
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
            title: "Where Flutter stands out",
            titleIconPath: "assets/images/flutter_logo.png",
            slideContent: const WhereFlutterStandsOut(),
            pageNumber: "8",
            route: '/whereFlutterStandsOut'),
        HowestContentSlide(
          title: "Flutter by the Numbers: Industry Adoption & Success Metrics",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const FlutterByTheNumbers(),
          pageNumber: "9",
          route: '/flutterByTheNumbers',
        ),
        HowestContentSlide(
            title: "A brief history...",
            titleIconPath: "assets/images/flutter_logo.png",
            slideContent: const Timeline(),
            pageNumber: "10",
            route: '/timeline'),
        HowestContentSlide(
          title: "Made with Flutter",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const MadeWithFlutter(),
          pageNumber: "11",
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
          pageNumber: "13",
          route: '/flutterFundamentals',
        ),
        HowestContentSlide(
          title: 'Embedded - Flutter industrial',
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const FlutterIndustrial(),
          pageNumber: "14",
          route: '/flutterIndustrial',
        ),
        HowestContentSlide(
          title: "Why Flutter? - fast",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const FlutterFast(),
          pageNumber: "15",
          route: '/flutterFast',
        ),
        HowestContentSlide(
          title: "60fps & 120fps: Smooth Animations Across Devices",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const FlutterFrameRate(),
          pageNumber: "16",
          route: '/flutterFrameRate',
        ),
        HowestContentSlide(
          title: "Smooth Animations - demo",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const SmoothAnimations(),
          pageNumber: "17",
          route: '/smoothAnimations',
        ),
        HowestContentSlide(
          title: "Why Flutter? - Hot reload",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const HotReload(),
          pageNumber: "18",
          route: '/hotReload',
        ),
        HowestContentSlide(
          title: "Why Flutter? - Flexible",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const FlutterFlexible(),
          pageNumber: "19",
          route: '/flutterFlexible',
        ),
        HowestContentSlide(
          title: "The Dart compiler: Write Once, Deploy Everywhere",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const DartCompiler(),
          pageNumber: "20",
          route: '/dartCompiler',
        ),
        HowestContentSlide(
          title: "Meet Dart: The Language Powering Flutter",
          titleIconPath: "assets/images/dart_logo.png",
          slideContent: const MeetDart(),
          pageNumber: "21",
          route: '/meetDart',
        ),
        HowestContentSlide(
          title: "Core concepts: widgets",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const CoreConceptsWidgets(),
          pageNumber: "22",
          route: '/coreConceptsWidgets',
        ),
        HowestContentSlide(
          title: "Widgets - stateless vs stateful",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const StatelessStateful(),
          pageNumber: "23",
          route: '/statelessStateful',
        ),
        HowestContentSlide(
          title: "Widgets - stateless vs stateful code example",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const StatelessStatefulCode(),
          pageNumber: "24",
          route: '/statelessStatefulCode',
        ),
        HowestContentSlide(
          title: "Global state management",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const GlobalStateManagement(),
          pageNumber: "25",
          route: '/globalStateManagement',
        ),
        HowestContentSlide(
          title: "Create a new project in Flutter",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const CreateANewProject(),
          pageNumber: "26",
          route: '/createANewProject',
        ),
        HowestContentSlide(
          title: "The counter app",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const CounterApp(),
          pageNumber: "27",
          route: '/counterApp',
        ),
        HowestContentSlide(
          title: "Core concepts: The widget tree and other trees",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const TreesInFlutter(),
          pageNumber: "28",
          route: '/coreConceptsWidgetTree',
        ),
        HowestContentSlide(
          title: "The widget tree - Counter app",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const CounterAppWidgetTree(),
          pageNumber: "29",
          route: '/counterAppWidgetTree',
        ),
        HowestContentSlide(
          title: "Core concepts: packages",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const CoreConceptsPackages(),
          pageNumber: "30",
          route: '/coreConceptsPackages',
        ),
        HowestContentSlide(
          title: "Core concepts: Platform channels",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const CoreConceptsPlatformChannels(),
          pageNumber: "31",
          route: '/platformChannels',
        ),

        /// Beyond front-end slides
        HowestTitleSlide(slideContent: const BfeTitle(), route: '/bfeTitle'),
        HowestContentSlide(
          title: "Dart beyond Flutter - Flutter Flame",
          titleIconPath: "assets/images/logo_flame.png",
          slideContent: const FlameEngine(),
          pageNumber: "33",
          background: Image.asset(
            'assets/images/flame_game_bg.png',
            fit: BoxFit.cover,
          ),
          backgroundOverlay: HowestStyle.backgroundColor.withAlpha(170),
          route: '/flameEngine',
        ),
        HowestContentSlide(
          title: "Dart beyond Flutter - Flutter Flame demo",
          titleIconPath: "assets/images/logo_flame.png",
          slideContent: const FlameDemo(),
          pageNumber: "34",
          route: '/flameDemo',
        ),
        HowestSubtitleSlide(
            slideContent: JasprIntroduction(), route: "/jasprIntroduction"),
        HowestContentSlide(
          title: "Dart beyond Flutter - Jaspr web framework",
          titleIconPath: "assets/images/logo_jaspr.png",
          slideContent: const JasprFramework(),
          pageNumber: "36",
          route: '/jasprFramework',
        ),
        HowestContentSlide(
          title: "Dart beyond Flutter - Jaspr web framework",
          titleIconPath: "assets/images/logo_jaspr.png",
          slideContent: const JasprBenefits(),
          pageNumber: "37",
          route: '/jasprBenefits',
        ),

        /// Flutter at Howest slides
        HowestTitleSlide(
            slideContent: const FahTitle(), route: '/flutterAtHowestTitle'),
        HowestContentSlide(
          title: "Flutter @ Howest - project Lambrecht - Introduction",
          titleIconPath: "assets/images/icon_siloconnect2.webp",
          slideContent: const LambrechtInfo(),
          pageNumber: "39",
          route: '/lambrechtIntro',
        ),
        HowestContentSlide(
          title: "Flutter @ Howest - project Lambrecht - Tag reader",
          titleIconPath: "assets/images/icon_siloconnect2.webp",
          slideContent: const LambrechtTagReader(),
          pageNumber: "40",
          route: '/lambrechtTagReader',
        ),
        HowestContentSlide(
          title: "Flutter @ Howest - project Lambrecht - The problem",
          titleIconPath: "assets/images/icon_siloconnect2.webp",
          slideContent: const LambrechtProblem(),
          pageNumber: "41",
          route: '/lambrechtProblem',
        ),
        HowestContentSlide(
          title: "Flutter @ Howest - project Lambrecht - The solution",
          titleIconPath: "assets/images/icon_siloconnect2.webp",
          slideContent: const LambrechtSolution(),
          pageNumber: "42",
          route: '/lambrechtSolution',
        ),
        HowestContentSlide(
          title: "Flutter @ Howest - YET - Introduction",
          titleIconPath: "assets/images/icon_yet.png",
          slideContent: const YetInfo(),
          pageNumber: "43",
          route: '/yetInfo',
        ),
        HowestContentSlide(
          title: "Flutter @ Howest - YET - Create digital collages",
          background: Image.asset("assets/images/yet_collages_background.jpg",
              fit: BoxFit.cover),
          backgroundOverlay: HowestStyle.backgroundColor.withAlpha(170),
          titleIconPath: "assets/images/icon_yet.png",
          slideContent: const YetCollages(),
          pageNumber: "44",
          route: '/yetCollages',
        ),
        HowestContentSlide(
          title: "Flutter @ Howest - YET - Challenges",
          titleIconPath: "assets/images/icon_yet.png",
          slideContent: const YetChallenges(),
          pageNumber: "45",
          route: '/yetChallenges',
        ),
        HowestContentSlide(
          title: "Flutter @ Howest - YET - AI integration",
          titleIconPath: "assets/images/icon_yet.png",
          slideContent: const YetAiIntro(),
          pageNumber: "46",
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
          pageNumber: "49",
          route: '/genAiApplied',
        ),
        HowestContentSlide(
          title: "Flutter @ Howest - YET - Drawing with Flutter's CustomPaint",
          titleIconPath: "assets/images/icon_yet.png",
          slideContent: const DrawingWithCustomPaint(),
          pageNumber: "50",
          route: '/genAiInFlutterPaint',
        ),
        HowestContentSlide(
          title: "Flutter @ Howest - YET - Creating the Mask in Flutter",
          titleIconPath: "assets/images/icon_yet.png",
          slideContent: const CreatingTheMask(),
          pageNumber: "51",
          route: '/creatingTheMask',
        ),
        HowestContentSlide(
          title: "Flutter @ Howest - YET - Capturing the Mask in Flutter",
          titleIconPath: "assets/images/icon_yet.png",
          slideContent: const CapturingTheMask(),
          pageNumber: "52",
          route: '/capturingTheMask',
        ),
        HowestSubtitleSlide(slideContent: YetAiDemo(), route: "/yetAiDemo"),

        /// Wrap-up slides
        HowestTitleSlide(
            slideContent: const WrapUpTitle(), route: '/wrapUpTitle'),
        HowestContentSlide(
          title: "When native, when Flutter?",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const WhenFlutter(),
          pageNumber: "55",
          route: '/whenFlutter',
        ),
        HowestContentSlide(
          title: "Getting starded - codelabs",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const GettingStartedCodelabs(),
          pageNumber: "56",
          route: '/gettingStarted',
        ),
        HowestContentSlide(
          title: "Start to Flutter @ Howest",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const StartToFlutter(),
          pageNumber: "57",
          route: '/startToFlutter',
        ),
        HowestContentSlide(
          title: "Join the Flutter Community",
          titleIconPath: "assets/images/flutter_logo.png",
          slideContent: const JoinCommunity(),
          pageNumber: "58",
          route: '/joinCommunity',
        ),
        HowestSubtitleSlide(
            slideContent: const QuestionsAnswers(), route: '/questionsAnswers'),
      ],
    );
  }
}
