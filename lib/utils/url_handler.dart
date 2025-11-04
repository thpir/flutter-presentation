import 'package:url_launcher/url_launcher.dart';

class UrlHandler {
  static Future<void> visitUrl(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}
