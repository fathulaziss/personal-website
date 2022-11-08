// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:html' as html;

class AppUtils {
  static Future<void> openLink(String url) async {
    html.window.open(url, '_blank');
  }
}
