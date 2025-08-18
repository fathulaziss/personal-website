// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:url_launcher/url_launcher.dart';
import 'package:web/web.dart' as web;

class AppUtils {
  static Future<void> openLink(String url) async {
    web.window.open(url, '_blank');
  }

  static Future<void> launcher(Uri scheme) async {
    if (await canLaunchUrl(scheme)) {
      await launchUrl(scheme);
    }
  }
}
