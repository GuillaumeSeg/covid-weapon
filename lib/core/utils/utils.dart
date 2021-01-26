import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class Utils {
  /// gets the applicationDirectory and path for the to-be downloaded file
  /// which will be used to save the file to that path in the downloadFile method
  static Future<String> getFilePath(uniqueFileName) async {
    String path = '';
    Directory tempDir = await getTemporaryDirectory();
    path = '${tempDir.path}/$uniqueFileName';
    return path;
  }

  static launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}